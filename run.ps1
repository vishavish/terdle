$buildFolder = ".\build"

if (-not (Test-Path $buildFolder)) {
    New-Item -ItemType Directory -Path $buildFolder
}

# Compile the Pascal program
fpc -o"$buildFolder\main.exe" src\main.pp -l- -vw -a -Px86_64

# Check the exit code of the last command
if ($LASTEXITCODE -eq 0) {
 .\build\main.exe
}
