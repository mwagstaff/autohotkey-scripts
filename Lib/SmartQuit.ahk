;##########################################################################################################
; Function: Close the tab or app, depending on app
;##########################################################################################################
SmartQuit() {

    IfWinActive .* - Google Chrome
        Send {CtrlDown}w{CtrlUp}
    Else IfWinActive .* - Visual Studio Code
        Send {CtrlDown}w{CtrlUp}
    Else
        Send {AltDown}{F4}{AltUp}

}