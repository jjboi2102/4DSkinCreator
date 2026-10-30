@echo off

echo Creating folders...

mkdir "%userprofile%\jjboi-programs\4DSkinCreator\temp"
mkdir "%userprofile%\jjboi-programs\4DSkinCreator\output"
cd "%userprofile%\jjboi-programs\4DSkinCreator"

if exist "template.zip" (exit) else (cls & echo Downloading template pack...)

curl -L "https://raw.githubusercontent.com/jjboi2102/4DSkinCreator/main/skinpack-template.zip" -o "template.zip"

exit