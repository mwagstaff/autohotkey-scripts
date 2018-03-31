;##########################################################################################################
; Function: Generates the list of active hotkeys
;##########################################################################################################
GenerateHotkeyList() {

    global AutoHotkeyShortCutKeys, AutoHotkeyShortCutKeysReady

    RunWait %ComSpec% /c "%A_ScriptDir%\Lib\Scripts\GenerateHotkeyList.cmd", , Hide     ; Run the script to generate the output file containing the list of hotkeys
    FileRead, AutoHotkeyShortCutKeys, %A_ScriptDir%\.Temp/ShortcutKeys.txt              ; Read the file output into a variable for later reference

    AutoHotkeyShortCutKeysReady := True

}
