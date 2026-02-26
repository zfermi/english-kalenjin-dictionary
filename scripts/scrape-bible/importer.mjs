/**
 * Import dictionary entries into Supabase
 * Reads dictionary_entries.json and inserts into words + translations tables.
 *
 * Usage:
 *   node importer.mjs
 *   node importer.mjs --dry-run    # preview without inserting
 *
 * Requires SUPABASE_URL and SUPABASE_SERVICE_KEY environment variables,
 * or reads from ../../.env.local (NEXT_PUBLIC_SUPABASE_URL + NEXT_PUBLIC_SUPABASE_ANON_KEY)
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { createClient } from '@supabase/supabase-js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUTPUT_DIR = path.join(__dirname, 'output');
const ENV_PATH = path.join(__dirname, '..', '..', '.env.local');

// CLI args
const DRY_RUN = process.argv.includes('--dry-run');

// ─── Load Env ───────────────────────────────────────────
function loadEnv() {
    const env = {};
    if (fs.existsSync(ENV_PATH)) {
        const lines = fs.readFileSync(ENV_PATH, 'utf-8').split('\n');
        for (const line of lines) {
            const match = line.match(/^([^=]+)=(.+)$/);
            if (match) env[match[1].trim()] = match[2].trim();
        }
    }
    return {
        url: process.env.SUPABASE_URL || env.NEXT_PUBLIC_SUPABASE_URL,
        key: process.env.SUPABASE_SERVICE_KEY || env.NEXT_PUBLIC_SUPABASE_ANON_KEY,
    };
}

// ─── Category mapping ───────────────────────────────────
const CATEGORY_MAP = {
    'Animals': 'Animals',
    'Nature': 'Nature',
    'Family': 'Family',
    'Body': 'Body',
    'Food': 'Food',
    'Actions': 'Actions',
    'Numbers': 'Numbers',
    'Greetings': 'Greetings',
    'General': 'General',
};

// ─── Main ───────────────────────────────────────────────
async function main() {
    console.log('╔══════════════════════════════════════════╗');
    console.log('║   Supabase Dictionary Importer           ║');
    console.log('╚══════════════════════════════════════════╝');
    if (DRY_RUN) console.log('  ⚠️  DRY RUN — no data will be inserted\n');

    // Load dictionary
    const dictPath = path.join(OUTPUT_DIR, 'dictionary_entries.json');
    if (!fs.existsSync(dictPath)) {
        console.error('❌ dictionary_entries.json not found. Run processor.mjs first.');
        process.exit(1);
    }

    const entries = JSON.parse(fs.readFileSync(dictPath, 'utf-8'));
    console.log(`📖 Loaded ${entries.length} dictionary entries\n`);

    // Filter out proper nouns (same word in both languages) and low-quality entries
    const filtered = entries.filter(e => {
        // Skip if Kalenjin word equals English word (proper nouns)
        if (e.kalenjin_word.toLowerCase() === e.english_word.toLowerCase()) return false;
        // Skip very short words (likely artifacts)
        if (e.kalenjin_word.length < 2) return false;
        // Keep only entries with confidence >= 0.15
        if (e.confidence < 0.15) return false;
        return true;
    });
    console.log(`🔍 After filtering proper nouns: ${filtered.length} entries\n`);

    if (DRY_RUN) {
        console.log('Sample entries that would be imported:');
        filtered.slice(0, 30).forEach((e, i) => {
            console.log(`  ${String(i + 1).padStart(3)}. ${e.english_word.padEnd(15)} → ${e.kalenjin_word} [${e.confidence}]`);
        });
        console.log(`\n  ... and ${filtered.length - 30} more.`);
        console.log('\n✅ Dry run complete. Run without --dry-run to import.');
        return;
    }

    // Connect to Supabase
    const { url, key } = loadEnv();
    if (!url || !key || key === 'PASTE_YOUR_ANON_KEY_HERE') {
        console.error('❌ Supabase credentials not found or not configured.');
        console.error('   Set NEXT_PUBLIC_SUPABASE_ANON_KEY in .env.local');
        console.error('   Or set SUPABASE_URL and SUPABASE_SERVICE_KEY env vars.');
        process.exit(1);
    }

    const supabase = createClient(url, key);
    console.log('🔗 Connected to Supabase\n');

    // Load existing categories
    const { data: categories } = await supabase.from('categories').select('id, name');
    const categoryMap = new Map(categories.map(c => [c.name, c.id]));
    console.log(`📂 Loaded ${categories.length} categories\n`);

    // Load existing words to avoid duplicates
    const { data: existingWords } = await supabase.from('words').select('id, english_word');
    const existingWordMap = new Map(existingWords.map(w => [w.english_word.toLowerCase(), w.id]));
    console.log(`📋 ${existingWords.length} existing words in database\n`);

    let inserted = 0;
    let skipped = 0;
    let errors = 0;

    // Process in batches
    const BATCH_SIZE = 50;
    for (let i = 0; i < filtered.length; i += BATCH_SIZE) {
        const batch = filtered.slice(i, i + BATCH_SIZE);
        const progress = Math.round((i / filtered.length) * 100);
        process.stdout.write(`\r  Importing... ${progress}% (${inserted} inserted, ${skipped} skipped, ${errors} errors)`);

        for (const entry of batch) {
            try {
                let wordId = existingWordMap.get(entry.english_word.toLowerCase());

                // Insert word if it doesn't exist
                if (!wordId) {
                    const categoryId = categoryMap.get(CATEGORY_MAP[entry.category] || 'General');
                    const { data: newWord, error: wordError } = await supabase
                        .from('words')
                        .insert({
                            english_word: entry.english_word,
                            category_id: categoryId,
                            status: 'active',
                        })
                        .select('id')
                        .single();

                    if (wordError) {
                        if (wordError.code === '23505') {
                            // Duplicate — look it up
                            const { data: existing } = await supabase
                                .from('words')
                                .select('id')
                                .eq('english_word', entry.english_word)
                                .single();
                            wordId = existing?.id;
                        } else {
                            if (errors < 3) console.error('\n  Word insert error:', wordError.message, wordError.code, wordError.details);
                            errors++;
                            continue;
                        }
                    } else {
                        wordId = newWord.id;
                    }

                    existingWordMap.set(entry.english_word.toLowerCase(), wordId);
                }

                if (!wordId) {
                    errors++;
                    continue;
                }

                // Insert translation
                const { error: transError } = await supabase
                    .from('translations')
                    .insert({
                        word_id: wordId,
                        kipsigis_text: entry.kalenjin_word,
                        phonetic: null,
                        speaker_context: { source: 'bible-scraper', confidence: entry.confidence },
                        dialect_region: null,
                        example_sentence: null,
                        status: entry.confidence >= 0.8 ? 'crowned' : 'pending',
                        upvotes_count: Math.ceil(entry.cooccurrences / 2),
                    })
                    .select('id')
                    .single();

                if (transError) {
                    if (transError.code === '23505') {
                        skipped++; // duplicate translation
                    } else {
                        if (errors < 3) console.error('\n  Translation insert error:', transError.message, transError.code, transError.details);
                        errors++;
                    }
                } else {
                    inserted++;
                }
            } catch (err) {
                errors++;
            }
        }
    }

    console.log(`\r  Importing... 100%${''.padEnd(40)}`);
    console.log('\n\n══════════════════════════════════════════');
    console.log(`  ✅ Inserted: ${inserted}`);
    console.log(`  ⏭  Skipped:  ${skipped} (duplicates)`);
    console.log(`  ❌ Errors:   ${errors}`);
    console.log('══════════════════════════════════════════\n');
}

main().catch(err => {
    console.error('Fatal:', err);
    process.exit(1);
});
