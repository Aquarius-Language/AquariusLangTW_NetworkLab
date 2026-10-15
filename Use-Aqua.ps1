param([string]$CompilerDirectory = 'C:\OfficialProjects\AquariusLangTW\dist\releases\AquariusCompiler-win-x64-20261015-204220-176af51c\aqua')
$compiler = Join-Path $CompilerDirectory 'aqua.exe'
if (-not (Test-Path -LiteralPath $compiler -PathType Leaf)) { throw '找不到星泉編譯器。' }
$env:PATH = $CompilerDirectory + ';' + (($env:PATH.Split(';') | Where-Object { $_ -ne $CompilerDirectory }) -join ';')
(Get-Command aqua -CommandType Application | Select-Object -First 1).Source