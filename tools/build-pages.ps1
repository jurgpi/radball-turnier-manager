# Erzeugt die GitHub-Pages-Seiten im Repo-Wurzelordner aus den Entwürfen in docs/.
# docs/*.html sind Seiten-Fragmente (ohne <html>/<head>), wie sie auch als Claude-Artifact veröffentlicht werden.
# Aufruf:  powershell -File tools\build-pages.ps1
$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$utf8 = New-Object System.Text.UTF8Encoding($false)

$head = @'
<!doctype html>
<html lang="de">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0}img{max-width:100%}[hidden]{display:none!important}</style>
</head>
<body>
'@
$foot = "`n</body>`n</html>`n"

$pages = @{ 'docs/mockup.html' = 'index.html'; 'docs/konzept.html' = 'konzept.html' }
foreach ($src in $pages.Keys) {
  $body = [IO.File]::ReadAllText((Join-Path $root $src), $utf8)
  [IO.File]::WriteAllText((Join-Path $root $pages[$src]), $head + $body + $foot, $utf8)
  Write-Output "$src -> $($pages[$src])"
}
if (-not (Test-Path (Join-Path $root '.nojekyll'))) { [IO.File]::WriteAllText((Join-Path $root '.nojekyll'), '', $utf8) }
