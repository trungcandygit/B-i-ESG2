$ErrorActionPreference = "Stop"

$repoRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$source = Join-Path $repoRoot "journal-fit-finder"

if (-not (Test-Path -LiteralPath $source)) {
    throw "Cannot find skill folder: $source"
}

$codexHome = if ($env:CODEX_HOME) { $env:CODEX_HOME } else { Join-Path $env:USERPROFILE ".codex" }
$skillsDir = Join-Path $codexHome "skills"
$target = Join-Path $skillsDir "journal-fit-finder"

New-Item -ItemType Directory -Force -Path $skillsDir | Out-Null

if (Test-Path -LiteralPath $target) {
    Remove-Item -LiteralPath $target -Recurse -Force
}

Copy-Item -LiteralPath $source -Destination $target -Recurse -Force

Write-Host "Installed journal-fit-finder to $target"
Write-Host "Restart Codex if the skill list was already loaded."
