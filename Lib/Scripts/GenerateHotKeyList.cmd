@echo off

set shortcutKeysDir="%~dp0\..\..\.Temp"
set shortcutKeysFilePath="%shortcutKeysDir%\ShortcutKeys.txt"

mkdir "%shortcutKeysDir%"

powershell -Command "%~dp0\ListHotkeys.ps1" > "%shortcutKeysFilePath%"

echo Press Escape to close this window >> "%shortcutKeysFilePath%"