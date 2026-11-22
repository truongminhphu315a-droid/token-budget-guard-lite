# Benchmark_Token_Cost.ps1
# Reads the raw DOM dump, strips HTML tags & whitespace, and reports token stats.

param(
    [string]$InputFile = "examples\\raw_dom_dump.txt"
)

if (-not (Test-Path $InputFile)) {
    Write-Error "Input file not found: $InputFile"
    exit 1
}

$raw = Get-Content -Path $InputFile -Raw
$clean = $raw -replace "<[^>]+>", " " -replace "\s+", " "

$rawLen = $raw.Length
$cleanLen = $clean.Trim().Length
$rawTokens = [math]::Ceiling($rawLen / 4)
$cleanTokens = [math]::Ceiling($cleanLen / 4)
$reduction = 100 * (1 - $cleanTokens / $rawTokens)

Write-Host "Raw chars : $rawLen"
Write-Host "Clean chars: $cleanLen"
Write-Host "Raw token estimate   : $rawTokens"
Write-Host "Clean token estimate : $cleanTokens"
Write-Host "Token reduction %    : {0:N1}%%" -f $reduction
