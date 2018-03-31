;##########################################################################################################
; Function: Loads an app if already running, or runs it if not
;##########################################################################################################
LoadApp( appTitle, appFilePath ) {

    ; Use the transform command to expand any variables
    Transform, appFilePath, Deref, %appFilePath%

    IfWinExist %appTitle%
        WinActivate
    Else {
        ToolTip Loading app: %appTitle%
        Run %appFilePath%
        WinWaitActive %appTitle%
        ToolTip
    }

}