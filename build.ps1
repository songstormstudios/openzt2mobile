$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$jar = Join-Path $root "Zoo_Tycoon_2_Mobile_v1.1.7.jar"
$classes = Join-Path $PSScriptRoot "build\classes"
$sources = Get-ChildItem -Path (Join-Path $PSScriptRoot "src") -Recurse -Filter *.java | ForEach-Object { $_.FullName }

if (-not (Test-Path $jar)) {
    throw "Missing game JAR: $jar"
}

New-Item -ItemType Directory -Force -Path $classes | Out-Null
javac --release 8 -cp $jar -d $classes $sources

Write-Host "Built desktop classes in $classes"
