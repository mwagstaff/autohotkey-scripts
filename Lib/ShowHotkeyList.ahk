;##########################################################################################################
; Function: Shows the list of active hotkeys
;##########################################################################################################
ShowHotkeyList() {

    global AutoHotkeyShortCutKeys, AutoHotkeyShortCutKeysReady

    If global AutoHotkeyShortCutKeysReady <> True
    {
        ToolTip Waiting for hotkey shortcut list to be generated. Please try again shortly...
        Sleep 2000
        ToolTip
    }
    Else
    {
        Gui font, cFFFFFF s14, Lucida Console
        Gui Add, Text, , %AutoHotkeyShortCutKeys%
        Gui Color, 000000
        Gui +LastFound +AlwaysOnTop +ToolWindow
        WinSet Transparent, 250, ,
        WinSet Region, 0-0 W1000 H1000 R30-30,
        Gui -Caption
        Gui Show
    }

}
