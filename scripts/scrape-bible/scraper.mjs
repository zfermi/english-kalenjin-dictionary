/**
 * Bible.com Parallel Scraper
 * Scrapes Kalenjin (KALDC v1586) and English (NIV v111) verse text,
 * saving verse-aligned JSON files per chapter.
 *
 * Usage:
 *   node scraper.mjs                          # scrape all books
 *   node scraper.mjs --book PSA               # scrape all Psalms
 *   node scraper.mjs --book PSA --chapter 127 # scrape Psalm 127 only
 */

import puppeteer from 'puppeteer-core';
import fs from 'fs';
import path from 'path';

// Path to system Chrome — update if yours is different
const CHROME_PATH = 'C:\\Program Files\\Google\\Chrome\\Application\\chrome.exe';
import { fileURLToPath } from 'url';

const __dirname = path.dirname(fileURLToPath(import.meta.url));
const DATA_DIR = path.join(__dirname, 'data');
const ERROR_LOG = path.join(DATA_DIR, 'errors.log');
const BOOKS = JSON.parse(fs.readFileSync(path.join(__dirname, 'books.json'), 'utf-8'));

// Bible.com version IDs
const KALDC_VERSION = 1586;
const NIV_VERSION = 111;

// Rate limiting
const DELAY_MS = 2500; // ms between page loads
const NAV_TIMEOUT = 30000; // max wait for page to load

// ─── CLI Args ───────────────────────────────────────────
const args = process.argv.slice(2);
function getArg(name) {
    const idx = args.indexOf(`--${name}`);
    return idx !== -1 && args[idx + 1] ? args[idx + 1] : null;
}
const filterBook = getArg('book');
const filterChapter = getArg('chapter') ? parseInt(getArg('chapter'), 10) : null;

// ─── Helpers ────────────────────────────────────────────

function sleep(ms) {
    return new Promise(r => setTimeout(r, ms));
}

function logError(msg) {
    const line = `[${new Date().toISOString()}] ${msg}\n`;
    fs.appendFileSync(ERROR_LOG, line);
    console.error('  ✗', msg);
}

function chapterFilePath(bookCode, chapter) {
    return path.join(DATA_DIR, `${bookCode}.${chapter}.json`);
}

/**
 * Extract verse text from a Bible.com chapter page.
 * Bible.com renders verses inside elements with data-usfm attributes.
 * We look for common selectors used by the YouVersion reader.
 */
async function extractVerses(page) {
    // Wait for the chapter content to render
    await page.waitForSelector('[data-usfm]', { timeout: NAV_TIMEOUT }).catch(() => null);
    // Additional wait for any lazy-loaded content
    await sleep(1500);

    const verses = await page.evaluate(() => {
        const result = [];

        // Strategy 1: Look for elements with data-usfm attribute (most reliable)
        const usfmElements = document.querySelectorAll('[data-usfm]');
        if (usfmElements.length > 0) {
            const verseMap = new Map();
            usfmElements.forEach(el => {
                const usfm = el.getAttribute('data-usfm');
                if (!usfm) return;
                // data-usfm looks like "PSA.127.1" — must have 3 parts (Book.Chapter.Verse)
                const parts = usfm.split('.');
                if (parts.length < 3) return; // skip chapter-level elements like "PSA.127"
                const verseNum = parseInt(parts[2], 10);
                if (isNaN(verseNum) || verseNum < 1 || verseNum > 200) return;

                const text = el.textContent.trim();
                if (!text) return;

                // Accumulate text for same verse number (spans can split a verse)
                if (verseMap.has(verseNum)) {
                    verseMap.set(verseNum, verseMap.get(verseNum) + ' ' + text);
                } else {
                    verseMap.set(verseNum, text);
                }
            });

            verseMap.forEach((text, num) => {
                // Clean up: remove leading verse number if present, normalize spaces
                let cleaned = text.replace(/^\d+\s*/, '').replace(/\s+/g, ' ').trim();
                if (cleaned) {
                    result.push({ number: num, text: cleaned });
                }
            });
        }

        // Strategy 2: Fallback — look for verse labels
        if (result.length === 0) {
            const labels = document.querySelectorAll('.label');
            labels.forEach(label => {
                const verseNum = parseInt(label.textContent.trim(), 10);
                if (isNaN(verseNum)) return;

                // Get the parent verse container and extract text
                let container = label.closest('[class*="verse"]') || label.parentElement;
                if (container) {
                    let text = container.textContent.trim();
                    text = text.replace(/^\d+\s*/, '').replace(/\s+/g, ' ').trim();
                    if (text) {
                        result.push({ number: verseNum, text });
                    }
                }
            });
        }

        // Sort by verse number
        result.sort((a, b) => a.number - b.number);
        return result;
    });

    return verses;
}

// ─── Main Scraper ───────────────────────────────────────

async function scrapeChapter(browser, bookCode, bookName, chapter) {
    const outFile = chapterFilePath(bookCode, chapter);

    // Resume support: skip if file exists and looks valid
    if (fs.existsSync(outFile)) {
        try {
            const existing = JSON.parse(fs.readFileSync(outFile, 'utf-8'));
            if (existing.verses && existing.verses.length > 0) {
                console.log(`  ⏭ ${bookCode}.${chapter} — already scraped (${existing.verses.length} verses)`);
                return 'skipped';
            }
        } catch { /* re-scrape if file is corrupt */ }
    }

    const kalenjinUrl = `https://www.bible.com/bible/${KALDC_VERSION}/${bookCode}.${chapter}.KALDC`;
    const nivUrl = `https://www.bible.com/bible/${NIV_VERSION}/${bookCode}.${chapter}.NIV`;

    const page = await browser.newPage();
    await page.setUserAgent('Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36');

    try {
        // ── Scrape Kalenjin ──
        console.log(`  📖 Fetching KALDC: ${bookCode}.${chapter}...`);
        await page.goto(kalenjinUrl, { waitUntil: 'networkidle2', timeout: NAV_TIMEOUT });
        const kalenjinVerses = await extractVerses(page);

        await sleep(DELAY_MS);

        // ── Scrape English ──
        console.log(`  📖 Fetching NIV:   ${bookCode}.${chapter}...`);
        await page.goto(nivUrl, { waitUntil: 'networkidle2', timeout: NAV_TIMEOUT });
        const englishVerses = await extractVerses(page);

        // ── Align verses ──
        const allVerseNums = new Set([
            ...kalenjinVerses.map(v => v.number),
            ...englishVerses.map(v => v.number)
        ]);

        const kalMap = new Map(kalenjinVerses.map(v => [v.number, v.text]));
        const engMap = new Map(englishVerses.map(v => [v.number, v.text]));

        const verses = [...allVerseNums].sort((a, b) => a - b).map(num => ({
            number: num,
            kalenjin: kalMap.get(num) || null,
            english: engMap.get(num) || null
        }));

        // ── Save ──
        const output = {
            book: bookCode,
            bookName,
            chapter,
            kalenjin_version: 'KALDC',
            english_version: 'NIV',
            scraped_at: new Date().toISOString(),
            verse_count: verses.length,
            verses
        };

        fs.writeFileSync(outFile, JSON.stringify(output, null, 2), 'utf-8');
        console.log(`  ✓ ${bookCode}.${chapter} — ${verses.length} verses saved`);

        if (kalenjinVerses.length === 0) {
            logError(`No Kalenjin verses found for ${bookCode}.${chapter}`);
        }
        if (englishVerses.length === 0) {
            logError(`No English verses found for ${bookCode}.${chapter}`);
        }

        return 'ok';
    } catch (err) {
        logError(`Failed ${bookCode}.${chapter}: ${err.message}`);
        return 'error';
    } finally {
        await page.close();
    }
}

async function main() {
    // Ensure data directory exists
    fs.mkdirSync(DATA_DIR, { recursive: true });

    // Filter books
    let books = BOOKS;
    if (filterBook) {
        books = books.filter(b => b.code === filterBook.toUpperCase());
        if (books.length === 0) {
            console.error(`Book "${filterBook}" not found in books.json`);
            process.exit(1);
        }
    }

    // Count total chapters
    let totalChapters = 0;
    for (const book of books) {
        if (filterChapter) {
            totalChapters += 1;
        } else {
            totalChapters += book.chapters;
        }
    }

    console.log('╔══════════════════════════════════════════╗');
    console.log('║   Bible.com Kalenjin-English Scraper     ║');
    console.log('╚══════════════════════════════════════════╝');
    console.log(`  Books: ${books.length} | Chapters: ${totalChapters}`);
    console.log(`  Rate limit: ${DELAY_MS}ms between requests`);
    console.log(`  Output: ${DATA_DIR}`);
    console.log('');

    const browser = await puppeteer.launch({
        headless: true,
        executablePath: CHROME_PATH,
        args: ['--no-sandbox', '--disable-setuid-sandbox']
    });

    let done = 0;
    let skipped = 0;
    let errors = 0;

    try {
        for (const book of books) {
            const startCh = filterChapter || 1;
            const endCh = filterChapter || book.chapters;

            console.log(`\n📚 ${book.name} (${book.code}) — chapters ${startCh}–${endCh}`);

            for (let ch = startCh; ch <= endCh; ch++) {
                const result = await scrapeChapter(browser, book.code, book.name, ch);

                if (result === 'skipped') skipped++;
                else if (result === 'error') errors++;
                else done++;

                // Rate limit between chapters
                if (ch < endCh) await sleep(DELAY_MS);
            }
        }
    } finally {
        await browser.close();
    }

    console.log('\n══════════════════════════════════════════');
    console.log(`  Done: ${done} | Skipped: ${skipped} | Errors: ${errors}`);
    console.log('══════════════════════════════════════════\n');
}

main().catch(err => {
    console.error('Fatal error:', err);
    process.exit(1);
});
