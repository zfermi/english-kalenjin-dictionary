# ============================================================
# Overnight Bible Scrape Pipeline
# Scrapes ALL books → Processes word pairs → Imports to Supabase
# ============================================================

Write-Host "============================================"
Write-Host "  OVERNIGHT SCRAPE PIPELINE"
Write-Host "  Started: $(Get-Date)"
Write-Host "============================================"
Write-Host ""

$scriptDir = $PSScriptRoot
Set-Location $scriptDir

# Set Supabase credentials for import step
$env:SUPABASE_URL = "https://vnynnkovxuiabolvuavy.supabase.co"
$env:SUPABASE_SERVICE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InZueW5ua292eHVpYWJvbHZ1YXZ5Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc3MTYxMTcwMSwiZXhwIjoyMDg3MTg3NzAxfQ.uExDauo6OeO2wLwBfvvO6UCCTsSasQZhJjFOQNKzlSw"

# ── Step 1: Scrape all books ──
Write-Host "STEP 1: Scraping all Bible books..."
Write-Host "  This will take several hours. Already-scraped chapters are skipped."
Write-Host ""
node scraper.mjs 2>&1 | Tee-Object -FilePath "$scriptDir\scrape-log.txt"

Write-Host ""
Write-Host "============================================"
Write-Host "  Scraping complete: $(Get-Date)"
Write-Host "============================================"
Write-Host ""

# ── Step 2: Process word pairs ──
Write-Host "STEP 2: Processing word pairs..."
node processor.mjs 2>&1 | Tee-Object -FilePath "$scriptDir\process-log.txt"

Write-Host ""
Write-Host "============================================"
Write-Host "  Processing complete: $(Get-Date)"
Write-Host "============================================"
Write-Host ""

# ── Step 3: Import to Supabase ──
Write-Host "STEP 3: Importing to Supabase..."
node fast-import.mjs 2>&1 | Tee-Object -FilePath "$scriptDir\import-log.txt"

Write-Host ""
Write-Host "============================================"
Write-Host "  ALL DONE: $(Get-Date)"
Write-Host "  Check scrape-log.txt, process-log.txt,"
Write-Host "  and import-log.txt for details."
Write-Host "============================================"
