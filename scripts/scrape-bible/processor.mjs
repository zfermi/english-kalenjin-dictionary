/**
 * Phase 2: Bible Verse Processor
 * Reads scraped JSON files and builds a Kalenjin-English dictionary
 * using word frequency analysis and co-occurrence scoring.
 *
 * Usage:
 *   node processor.mjs                    # process all scraped data
 *   node processor.mjs --min-score 0.3    # set minimum confidence score
 *   node processor.mjs --top 500          # output top N entries
 */

import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const DATA_DIR = path.join(__dirname, 'data');
const OUTPUT_DIR = path.join(__dirname, 'output');

// CLI args
const args = process.argv.slice(2);
function getArg(name, defaultVal) {
    const idx = args.indexOf(`--${name}`);
    return idx !== -1 && args[idx + 1] ? args[idx + 1] : defaultVal;
}
const MIN_SCORE = parseFloat(getArg('min-score', '0.15'));
const TOP_N = parseInt(getArg('top', '2000'), 10);

// ─── Stop Words ─────────────────────────────────────────
// Common words that don't carry meaningful dictionary value

const ENGLISH_STOP_WORDS = new Set([
    'the', 'a', 'an', 'and', 'or', 'but', 'in', 'on', 'at', 'to', 'for',
    'of', 'with', 'by', 'from', 'is', 'are', 'was', 'were', 'be', 'been',
    'being', 'have', 'has', 'had', 'do', 'does', 'did', 'will', 'would',
    'shall', 'should', 'may', 'might', 'must', 'can', 'could', 'not', 'no',
    'nor', 'so', 'if', 'then', 'than', 'that', 'this', 'these', 'those',
    'it', 'its', 'i', 'me', 'my', 'we', 'us', 'our', 'you', 'your',
    'he', 'him', 'his', 'she', 'her', 'they', 'them', 'their', 'who',
    'whom', 'whose', 'which', 'what', 'when', 'where', 'how', 'why',
    'all', 'each', 'every', 'both', 'few', 'more', 'most', 'other',
    'some', 'such', 'only', 'own', 'same', 'too', 'very', 'just',
    'because', 'as', 'up', 'about', 'into', 'through', 'during',
    'before', 'after', 'above', 'below', 'between', 'out', 'off',
    'over', 'under', 'again', 'further', 'once', 'here', 'there',
    'also', 'while', 'until', 'against', 'among', 'along', 'upon',
    'like', 'even', 'still', 'yet', 'ever', 'never', 'always',
    'now', 'already', 'much', 'many', 'well', 'back', 'down',
    'away', 'around', 'though', 'although', 'however', 'whether',
    'either', 'neither', 'else', 'instead', 'rather', 'within',
    'without', 'across', 'beside', 'besides', 'beyond', 'except',
    'am', 'an', 'any', 'anything', 'anyone',
]);

const KALENJIN_STOP_WORDS = new Set([
    'ak', 'ko', 'ne', 'eng', "eng'", 'che', 'ago', 'si', 'ngot', 'koma',
    'ye', 'amu', 'anyun', 'nooto', 'agot', 'inee', 'kole', 'kobo',
    'tugul', 'age', 'ake', 'oo', 'ee', 'ma', 'ke', 'ki', 'kai',
]);

// ─── Tokenization ───────────────────────────────────────

function cleanText(text) {
    if (!text) return '';
    // Remove Bible cross-references like "# Jer 17.8" or "#127:2 Or eat..."
    text = text.replace(/#\s*\d+:\d+\s*Or\s+[^.]+\./g, '');
    text = text.replace(/#\s*[A-Za-z]+\s+\d+\.\d+/g, '');
    text = text.replace(/#\d+:\d+[^.]*\./g, '');
    // Remove parenthetical notes
    text = text.replace(/\([^)]*\)/g, '');
    return text;
}

function tokenize(text) {
    if (!text) return [];
    text = cleanText(text);
    // Lowercase, split on non-word characters (preserving apostrophes)
    return text
        .toLowerCase()
        .replace(/[^\w\s''-]/g, ' ')
        .split(/\s+/)
        .map(w => w.replace(/^['']+|['']+$/g, '').trim()) // trim apostrophes from edges
        .filter(w => w.length > 1) // skip single chars
        .filter(w => !/^-?\d+[-–]?\d*$/.test(w)); // skip numeric artifacts like "-6", "20-24", "127"
}

// ─── Load Data ──────────────────────────────────────────

function loadVerses() {
    const files = fs.readdirSync(DATA_DIR).filter(f => f.endsWith('.json') && !f.startsWith('errors'));
    const verses = [];

    for (const file of files) {
        try {
            const data = JSON.parse(fs.readFileSync(path.join(DATA_DIR, file), 'utf-8'));
            for (const verse of data.verses) {
                if (verse.kalenjin && verse.english) {
                    verses.push({
                        ref: `${data.book}.${data.chapter}.${verse.number}`,
                        kalenjin: verse.kalenjin,
                        english: verse.english,
                        kalTokens: tokenize(verse.kalenjin),
                        engTokens: tokenize(verse.english),
                    });
                }
            }
        } catch (err) {
            console.error(`Skipping ${file}: ${err.message}`);
        }
    }

    return verses;
}

// ─── Frequency Analysis ─────────────────────────────────

function buildFrequencyMaps(verses) {
    const kalFreq = new Map(); // word -> count
    const engFreq = new Map();

    for (const v of verses) {
        for (const w of v.kalTokens) {
            kalFreq.set(w, (kalFreq.get(w) || 0) + 1);
        }
        for (const w of v.engTokens) {
            engFreq.set(w, (engFreq.get(w) || 0) + 1);
        }
    }

    return { kalFreq, engFreq };
}

// ─── Co-occurrence Analysis ─────────────────────────────
// For every (Kalenjin word, English word) pair, count how many
// verses they co-occur in. Normalize by individual frequencies
// to get a Dice coefficient (a measure of association).

function buildCooccurrence(verses) {
    const cooccur = new Map(); // "kal||eng" -> count
    const kalVerseCount = new Map(); // kal word -> verse count
    const engVerseCount = new Map(); // eng word -> verse count

    for (const v of verses) {
        const kalSet = new Set(v.kalTokens);
        const engSet = new Set(v.engTokens);

        for (const kw of kalSet) {
            kalVerseCount.set(kw, (kalVerseCount.get(kw) || 0) + 1);
        }
        for (const ew of engSet) {
            engVerseCount.set(ew, (engVerseCount.get(ew) || 0) + 1);
        }

        // Co-occurrence: every pair in this verse
        for (const kw of kalSet) {
            if (KALENJIN_STOP_WORDS.has(kw)) continue;
            for (const ew of engSet) {
                if (ENGLISH_STOP_WORDS.has(ew)) continue;
                const key = `${kw}||${ew}`;
                cooccur.set(key, (cooccur.get(key) || 0) + 1);
            }
        }
    }

    return { cooccur, kalVerseCount, engVerseCount };
}

function scorePairs(cooccur, kalVerseCount, engVerseCount) {
    const scores = [];

    for (const [key, count] of cooccur.entries()) {
        const [kal, eng] = key.split('||');
        const kalCount = kalVerseCount.get(kal) || 1;
        const engCount = engVerseCount.get(eng) || 1;

        // Dice coefficient: 2 * co-occurrence / (freq_a + freq_b)
        const dice = (2 * count) / (kalCount + engCount);

        // Minimum co-occurrence threshold (appear together at least 2 times)
        if (count < 2) continue;

        scores.push({
            kalenjin: kal,
            english: eng,
            cooccurrences: count,
            kalenjin_frequency: kalCount,
            english_frequency: engCount,
            dice_score: Math.round(dice * 1000) / 1000,
        });
    }

    // Sort by dice score descending
    scores.sort((a, b) => b.dice_score - a.dice_score);
    return scores;
}

// ─── Build Dictionary ───────────────────────────────────
// For each Kalenjin word, pick the English word with highest Dice score

function buildDictionary(scores) {
    const bestMatch = new Map(); // kalenjin -> best entry

    for (const entry of scores) {
        if (entry.dice_score < MIN_SCORE) continue;

        const existing = bestMatch.get(entry.kalenjin);
        if (!existing || entry.dice_score > existing.dice_score) {
            bestMatch.set(entry.kalenjin, entry);
        }
    }

    // Also build reverse: for each English word, collect all Kalenjin matches
    const reverseMap = new Map();
    for (const [kal, entry] of bestMatch.entries()) {
        if (!reverseMap.has(entry.english)) {
            reverseMap.set(entry.english, []);
        }
        reverseMap.get(entry.english).push({
            kalenjin: kal,
            dice_score: entry.dice_score,
            cooccurrences: entry.cooccurrences,
        });
    }

    // Build final dictionary entries
    const dictionary = [];
    for (const [kal, entry] of bestMatch.entries()) {
        // Find example verse
        dictionary.push({
            kalenjin_word: kal,
            english_word: entry.english,
            confidence: entry.dice_score,
            cooccurrences: entry.cooccurrences,
            category: categorizeWord(entry.english),
        });
    }

    // Sort by confidence descending
    dictionary.sort((a, b) => b.confidence - a.confidence);
    return dictionary.slice(0, TOP_N);
}

// ─── Categorization ─────────────────────────────────────

function categorizeWord(englishWord) {
    const w = englishWord.toLowerCase();

    const categories = {
        'Animals': ['lion', 'ox', 'oxen', 'bull', 'lamb', 'sheep', 'goat', 'bird', 'eagle', 'dove', 'horse', 'donkey', 'dog', 'snake', 'serpent', 'fish', 'cow', 'calf', 'deer', 'ram', 'wolf', 'bear'],
        'Nature': ['water', 'fire', 'rain', 'sun', 'moon', 'star', 'earth', 'land', 'sea', 'river', 'mountain', 'hill', 'tree', 'stone', 'rock', 'wind', 'sky', 'heaven', 'cloud', 'field', 'valley', 'desert', 'forest', 'flower', 'grass', 'seed', 'fruit', 'vine', 'garden'],
        'Family': ['father', 'mother', 'son', 'daughter', 'child', 'children', 'brother', 'sister', 'husband', 'wife', 'family', 'offspring', 'ancestor', 'heir'],
        'Body': ['hand', 'eye', 'heart', 'head', 'foot', 'feet', 'mouth', 'face', 'ear', 'blood', 'bone', 'body', 'arm', 'tongue', 'lip', 'flesh', 'soul', 'spirit'],
        'Food': ['bread', 'wine', 'milk', 'honey', 'grain', 'wheat', 'food', 'meat', 'oil', 'salt', 'feast'],
        'Actions': ['walk', 'run', 'come', 'go', 'give', 'take', 'make', 'build', 'break', 'fight', 'kill', 'save', 'heal', 'sing', 'praise', 'pray', 'worship', 'speak', 'hear', 'see', 'know', 'love', 'hate', 'fear', 'trust', 'judge', 'reign', 'rule', 'serve', 'lead', 'follow', 'plant', 'harvest', 'cry', 'weep', 'rejoice', 'bless', 'curse', 'destroy', 'create', 'forgive', 'remember', 'forget'],
        'Numbers': ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten', 'hundred', 'thousand', 'first', 'second', 'third'],
        'Greetings': ['peace', 'hello', 'welcome', 'farewell'],
    };

    for (const [cat, words] of Object.entries(categories)) {
        if (words.includes(w)) return cat;
    }
    return 'General';
}

// ─── Main ───────────────────────────────────────────────

function main() {
    console.log('╔══════════════════════════════════════════╗');
    console.log('║   Kalenjin Dictionary Builder — Phase 2  ║');
    console.log('╚══════════════════════════════════════════╝');

    // 1. Load verses
    console.log('\n📥 Loading scraped verses...');
    const verses = loadVerses();
    console.log(`   ${verses.length} verse pairs loaded`);

    // 2. Frequency analysis
    console.log('\n📊 Building frequency maps...');
    const { kalFreq, engFreq } = buildFrequencyMaps(verses);
    console.log(`   Kalenjin unique words: ${kalFreq.size}`);
    console.log(`   English unique words: ${engFreq.size}`);

    // Top 20 Kalenjin words (excluding stop words)
    const topKal = [...kalFreq.entries()]
        .filter(([w]) => !KALENJIN_STOP_WORDS.has(w))
        .sort((a, b) => b[1] - a[1])
        .slice(0, 20);
    console.log('\n   Top 20 Kalenjin words:');
    topKal.forEach(([w, c], i) => console.log(`   ${String(i + 1).padStart(3)}. ${w} (${c})`));

    // 3. Co-occurrence analysis
    console.log('\n🔗 Computing co-occurrence scores...');
    const { cooccur, kalVerseCount, engVerseCount } = buildCooccurrence(verses);
    console.log(`   ${cooccur.size} word pairs analyzed`);

    const allScores = scorePairs(cooccur, kalVerseCount, engVerseCount);
    console.log(`   ${allScores.length} pairs above threshold (≥2 co-occurrences)`);

    // 4. Build dictionary
    console.log('\n📖 Building dictionary...');
    const dictionary = buildDictionary(allScores);
    console.log(`   ${dictionary.length} entries (min confidence: ${MIN_SCORE})`);

    // 5. Save outputs
    fs.mkdirSync(OUTPUT_DIR, { recursive: true });

    // Full dictionary
    const dictPath = path.join(OUTPUT_DIR, 'dictionary_entries.json');
    fs.writeFileSync(dictPath, JSON.stringify(dictionary, null, 2), 'utf-8');
    console.log(`\n💾 Saved: ${dictPath}`);

    // All scored pairs (for analysis)
    const pairsPath = path.join(OUTPUT_DIR, 'all_scored_pairs.json');
    fs.writeFileSync(pairsPath, JSON.stringify(allScores.slice(0, 5000), null, 2), 'utf-8');
    console.log(`💾 Saved: ${pairsPath}`);

    // Frequency tables
    const freqPath = path.join(OUTPUT_DIR, 'frequencies.json');
    fs.writeFileSync(freqPath, JSON.stringify({
        kalenjin: Object.fromEntries([...kalFreq.entries()].sort((a, b) => b[1] - a[1]).slice(0, 500)),
        english: Object.fromEntries([...engFreq.entries()].sort((a, b) => b[1] - a[1]).slice(0, 500)),
    }, null, 2), 'utf-8');
    console.log(`💾 Saved: ${freqPath}`);

    // Summary stats
    const summary = {
        total_verses: verses.length,
        kalenjin_unique_words: kalFreq.size,
        english_unique_words: engFreq.size,
        total_pairs_analyzed: cooccur.size,
        pairs_above_threshold: allScores.length,
        dictionary_entries: dictionary.length,
        min_confidence: MIN_SCORE,
        generated_at: new Date().toISOString(),
    };
    const summaryPath = path.join(OUTPUT_DIR, 'summary.json');
    fs.writeFileSync(summaryPath, JSON.stringify(summary, null, 2), 'utf-8');
    console.log(`💾 Saved: ${summaryPath}`);

    // Print sample entries
    console.log('\n📋 Sample dictionary entries:');
    console.log('─'.repeat(60));
    dictionary.slice(0, 30).forEach((e, i) => {
        console.log(`  ${String(i + 1).padStart(3)}. ${e.kalenjin_word.padEnd(20)} → ${e.english_word.padEnd(15)} [${e.confidence}] (${e.category})`);
    });
    console.log('─'.repeat(60));

    console.log(`\n✅ Done! ${dictionary.length} dictionary entries generated.`);
}

main();
