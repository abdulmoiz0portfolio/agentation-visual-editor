<#
.SYNOPSIS
    Installs Agentation Visual Editor into any target web project directory.
.PARAMETER TargetDir
    The target project root directory (defaults to current directory).
#>

param(
    [string]$TargetDir = "."
)

$ErrorActionPreference = "Stop"

Write-Host "🎯 Installing Agentation Visual Editor into $TargetDir..." -ForegroundColor Cyan

$assetsDir = Join-Path $TargetDir "assets\js"
if (-not (Test-Path $assetsDir)) {
    New-Item -ItemType Directory -Path $assetsDir -Force | Out-Null
    Write-Host "📁 Created $assetsDir directory" -ForegroundColor Green
}

$sourceFile = Join-Path $PSScriptRoot "..\dist\agentation-widget.min.js"
if (-not (Test-Path $sourceFile)) {
    $sourceFile = Join-Path $PSScriptRoot "..\dist\agentation-widget.js"
}

$targetFile = Join-Path $assetsDir "agentation-widget.js"
Copy-Item -Path $sourceFile -Destination $targetFile -Force

Write-Host "✅ Copied agentation-widget.js to $targetFile" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Next Steps:" -ForegroundColor Yellow
Write-Host "Add this line before </body> in your template/layout:"
Write-Host '    <script src="assets/js/agentation-widget.js" defer></script>' -ForegroundColor White
Write-Host ""
Write-Host "Then open your page with ?edit or press Ctrl + Shift + A to edit visually!" -ForegroundColor Cyan
