@echo off
setlocal enabledelayedexpansion

REM Define source file path and destination directory
set "sourceFile=%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper"
set "scriptDir=%~dp0"
set "destinationDir=%scriptDir%WallPaper"

REM Check if source file exists
if not exist "%sourceFile%" (
    echo Error: Source file does not exist!
    exit /b 1
)

REM Create destination folder if it doesn't exist
if not exist "%destinationDir%" (
    mkdir "%destinationDir%"
    echo Created directory: %destinationDir%
)

REM Generate timestamp using PowerShell (more reliable)
for /f "delims=" %%a in ('powershell -command "Get-Date -Format yyyyMMddHHmmss"') do set "timestamp=%%a"
set "destinationFile=%destinationDir%\!timestamp!.jpg"

REM Copy the file
copy "%sourceFile%" "!destinationFile!" /y

if !errorlevel! equ 0 (
    echo Spotlight wallpaper backup successful!
    echo Source file: %sourceFile%
    echo Destination file: !destinationFile!
) else (
    echo File copy failed
)

endlocal