$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $MyInvocation.MyCommand.Path
Copy-Item -LiteralPath (Join-Path $root 'index.html') -Destination (Join-Path $root 'public/index.html') -Force
Copy-Item -LiteralPath (Join-Path $root 'index.html') -Destination (Join-Path $root 'studyspace_pro.html') -Force
Write-Host 'Synced the app source to Firebase Hosting and standalone copies.'
