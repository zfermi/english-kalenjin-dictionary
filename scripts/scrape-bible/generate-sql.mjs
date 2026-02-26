/**
 * Generate SQL INSERT statements from dictionary_entries.json
 * Output can be pasted directly into Supabase SQL Editor.
 *
 * Usage: node generate-sql.mjs > output/import.sql
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const OUTPUT_DIR = path.join(__dirname, 'output');

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

function escapeSQL(str) {
    return str.replace(/'/g, "''");
}

function main() {
    const dictPath = path.join(OUTPUT_DIR, 'dictionary_entries.json');
    const entries = JSON.parse(fs.readFileSync(dictPath, 'utf-8'));

    // Filter (same logic as importer.mjs)
    const filtered = entries.filter(e => {
        if (e.kalenjin_word.toLowerCase() === e.english_word.toLowerCase()) return false;
        if (e.kalenjin_word.length < 2) return false;
        if (e.confidence < 0.15) return false;
        return true;
    });

    const lines = [];
    lines.push('-- ============================================================');
    lines.push('-- KALENJIN DICTIONARY BULK IMPORT');
    lines.push(`-- Generated: ${new Date().toISOString()}`);
    lines.push(`-- Entries: ${filtered.length}`);
    lines.push('-- Run this in Supabase SQL Editor');
    lines.push('-- ============================================================');
    lines.push('');
    lines.push('BEGIN;');
    lines.push('');

    // Group entries by english_word to handle multiple translations
    const wordMap = new Map();
    for (const entry of filtered) {
        const key = entry.english_word.toLowerCase();
        if (!wordMap.has(key)) {
            wordMap.set(key, {
                english_word: entry.english_word,
                category: entry.category || 'General',
                translations: [],
            });
        }
        wordMap.get(key).translations.push({
            kipsigis_text: entry.kalenjin_word,
            confidence: entry.confidence,
            cooccurrences: entry.cooccurrences || 1,
        });
    }

    console.error(`📖 ${filtered.length} entries → ${wordMap.size} unique English words`);

    // Insert words + translations using a DO block for clean duplicate handling
    lines.push('DO $$');
    lines.push('DECLARE');
    lines.push('  v_word_id uuid;');
    lines.push('  v_cat_id integer;');
    lines.push('BEGIN');

    let wordCount = 0;
    let transCount = 0;

    for (const [key, word] of wordMap) {
        const englishEsc = escapeSQL(word.english_word);
        const catName = CATEGORY_MAP[word.category] || 'General';

        lines.push('');
        lines.push(`  -- "${word.english_word}"`);
        lines.push(`  SELECT id INTO v_cat_id FROM public.categories WHERE name = '${catName}';`);
        lines.push(`  INSERT INTO public.words (english_word, category_id, status)`);
        lines.push(`    VALUES ('${englishEsc}', v_cat_id, 'active')`);
        lines.push(`    ON CONFLICT (english_word) DO NOTHING;`);
        lines.push(`  SELECT id INTO v_word_id FROM public.words WHERE english_word = '${englishEsc}';`);
        wordCount++;

        for (const t of word.translations) {
            const kipsigisEsc = escapeSQL(t.kipsigis_text);
            const status = t.confidence >= 0.8 ? 'crowned' : 'pending';
            const upvotes = Math.ceil(t.cooccurrences / 2);

            lines.push(`  INSERT INTO public.translations (word_id, kipsigis_text, status, upvotes_count, speaker_context)`);
            lines.push(`    VALUES (v_word_id, '${kipsigisEsc}', '${status}', ${upvotes}, '{"source":"bible-scraper","confidence":${t.confidence}}'::jsonb)`);
            lines.push(`    ON CONFLICT (word_id, kipsigis_text) DO NOTHING;`);
            transCount++;
        }
    }

    lines.push('');
    lines.push('END $$;');
    lines.push('');
    lines.push('COMMIT;');
    lines.push('');
    lines.push(`-- Summary: ${wordCount} words, ${transCount} translations`);

    const sqlPath = path.join(OUTPUT_DIR, 'import.sql');
    fs.writeFileSync(sqlPath, lines.join('\n'), 'utf-8');
    console.error(`✅ Written to ${sqlPath}`);
    console.error(`   ${wordCount} words, ${transCount} translations`);
}

main();
