param(
    [string]$TargetPath = (Get-Location).Path
)

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
$ProjectDir = Split-Path -Parent $ScriptDir

Write-Host "Installing Windsurf Skills..." -ForegroundColor Cyan

$RulesFile = Join-Path $ProjectDir ".windsurfrules"
$TargetFile = Join-Path $TargetPath ".windsurfrules"

if (Test-Path $RulesFile) {
    Copy-Item $RulesFile $TargetFile -Force
    Write-Host "✓ .windsurfrules copied to $TargetPath" -ForegroundColor Green
} else {
    Write-Host "✗ .windsurfrules not found in $ProjectDir" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "Done! Restart Windsurf IDE to apply the rules." -ForegroundColor Cyan
