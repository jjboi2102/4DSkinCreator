@echo off
setlocal enabledelayedexpansion

title 4D Skin Creator - updater

REM the autoit script has written a file with the scriptdirectory in it. this will hopefully read that so the new version of the app can be placed in the same folder
set scriptDirFile=%userprofile%\jjboi-programs\4DSkinCreator\scriptdir.txt
REM thanks chatgpt (reads the contents of the file and stores it in a variable):
for /f "delims=" %%A in (%scriptDirFile%) do set "scriptDir=%%A"
REM go to the directory that the original app was running in, then download and run the update
cd %scriptDir%

cls

echo [31mYou are using an old version of JJ's 4D Skin Creator.[0m
echo [92mDownloading update...[0m
REM kill the outdated skin creator app and delete its file (thanks again chatgpt for this code)
powershell -NoProfile -Command "$p = Get-Process | Where-Object { $_.MainWindowTitle -like '*JJ''s 4D Skin Creator*' }; foreach ($proc in $p) { $path = $proc.MainModule.FileName; Stop-Process -Id $proc.Id -Force; Start-Sleep -Milliseconds 100; Remove-Item -LiteralPath $path -Force }"
REM download new ver
curl -L "https://raw.githubusercontent.com/jjboi2102/4DSkinCreator/main/4DSkinCreator.exe" -o "4D Skin Creator.exe"
echo [92mRunning new version of JJ's 4D Skin Creator[0m
echo.
echo [92mYou may now close this window![0m
"4D Skin Creator.exe"