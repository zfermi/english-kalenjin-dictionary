/**
 * Fast bulk importer using Supabase PostgREST batch upserts.
 * Much faster than individual inserts — sends 200 rows at a time.
 *
 * Usage:
 *   Set SUPABASE_URL and SUPABASE_SERVICE_KEY env vars, then:
 *   node fast-import.mjs
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';
import { createClient } from '@supabase/supabase-js';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUTPUT_DIR = path.join(__dirname, 'output');
const ENV_PATH = path.join(__dirname, '..', '..', '.env.local');

// Load env
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

const CATEGORY_MAP = {
    'Animals': 'Animals', 'Nature': 'Nature', 'Family': 'Family',
    'Body': 'Body', 'Food': 'Food', 'Actions': 'Actions',
    'Numbers': 'Numbers', 'Greetings': 'Greetings', 'General': 'General',
};

async function main() {
    console.log('╔══════════════════════════════════════════╗');
    console.log('║   Fast Batch Importer                    ║');
    console.log('╚══════════════════════════════════════════╝\n');

    // Load dictionary
    const dictPath = path.join(OUTPUT_DIR, 'dictionary_entries.json');
    const entries = JSON.parse(fs.readFileSync(dictPath, 'utf-8'));
    console.log(`📖 Loaded ${entries.length} dictionary entries`);

    // Filter
    const filtered = entries.filter(e => {
        if (e.kalenjin_word.toLowerCase() === e.english_word.toLowerCase()) return false;
        if (e.kalenjin_word.length < 2) return false;
        if (e.confidence < 0.15) return false;
        return true;
    });
    console.log(`🔍 After filtering: ${filtered.length} entries\n`);

    // Connect
    const { url, key } = loadEnv();
    if (!url || !key) { console.error('❌ Missing credentials'); process.exit(1); }
    const supabase = createClient(url, key);
    console.log('🔗 Connected to Supabase\n');

    // Load categories
    const { data: categories } = await supabase.from('categories').select('id, name');
    const categoryMap = new Map(categories.map(c => [c.name, c.id]));
    console.log(`📂 Loaded ${categories.length} categories`);

    // ─── STEP 1: Batch upsert all unique words ───────────────
    console.log('\n── Step 1: Upserting words ──────────────────');
    const uniqueWords = new Map();
    for (const e of filtered) {
        const key = e.english_word.toLowerCase();
        if (!uniqueWords.has(key)) {
            uniqueWords.set(key, {
                english_word: e.english_word,
                category_id: categoryMap.get(CATEGORY_MAP[e.category] || 'General'),
                status: 'active',
            });
        }
    }

    const wordRows = [...uniqueWords.values()];
    console.log(`   ${wordRows.length} unique words to upsert`);

    const BATCH = 200;
    let upserted = 0;
    for (let i = 0; i < wordRows.length; i += BATCH) {
        const batch = wordRows.slice(i, i + BATCH);
        const { error } = await supabase
            .from('words')
            .upsert(batch, { onConflict: 'english_word', ignoreDuplicates: true });

        if (error) {
            console.error(`   ❌ Batch error at ${i}:`, error.message);
        } else {
            upserted += batch.length;
            process.stdout.write(`\r   ✅ Upserted ${upserted}/${wordRows.length} words`);
        }
    }
    console.log();

    // ─── STEP 2: Load all word IDs ───────────────────────────
    console.log('\n── Step 2: Loading word IDs ─────────────────');
    const wordIdMap = new Map();
    // Fetch in pages of 1000
    let from = 0;
    const PAGE = 1000;
    while (true) {
        const { data, error } = await supabase
            .from('words')
            .select('id, english_word')
            .range(from, from + PAGE - 1);
        if (error) { console.error('   ❌', error.message); break; }
        for (const w of data) wordIdMap.set(w.english_word.toLowerCase(), w.id);
        if (data.length < PAGE) break;
        from += PAGE;
    }
    console.log(`   📋 ${wordIdMap.size} words in database\n`);

    // ─── STEP 3: Batch upsert translations ───────────────────
    console.log('── Step 3: Upserting translations ───────────');
    const translationRows = [];
    for (const e of filtered) {
        const wordId = wordIdMap.get(e.english_word.toLowerCase());
        if (!wordId) continue;
        translationRows.push({
            word_id: wordId,
            kipsigis_text: e.kalenjin_word,
            status: e.confidence >= 0.8 ? 'crowned' : 'pending',
            upvotes_count: Math.ceil((e.cooccurrences || 1) / 2),
            speaker_context: { source: 'bible-scraper', confidence: e.confidence },
        });
    }

    console.log(`   ${translationRows.length} translations to upsert`);
    let tUpserted = 0;
    let tErrors = 0;
    for (let i = 0; i < translationRows.length; i += BATCH) {
        const batch = translationRows.slice(i, i + BATCH);
        const { error } = await supabase
            .from('translations')
            .upsert(batch, { onConflict: 'word_id,kipsigis_text', ignoreDuplicates: true });

        if (error) {
            console.error(`\n   ❌ Batch error at ${i}:`, error.message);
            tErrors++;
        } else {
            tUpserted += batch.length;
            process.stdout.write(`\r   ✅ Upserted ${tUpserted}/${translationRows.length} translations`);
        }
    }

    console.log('\n\n══════════════════════════════════════════');
    console.log(`  ✅ Words:        ${wordRows.length}`);
    console.log(`  ✅ Translations: ${tUpserted}`);
    console.log(`  ❌ Batch errors: ${tErrors}`);
    console.log('══════════════════════════════════════════\n');
}

main().catch(err => { console.error('Fatal:', err); process.exit(1); });
