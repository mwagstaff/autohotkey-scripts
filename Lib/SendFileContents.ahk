;##########################################################################################################
; Function: Reads the contents of a file, and then sends it to the keyboard
;##########################################################################################################
SendFileContents( filePath, sendEnter ) {

    ; Load the file content
    FileRead, fileContents, %filePath%

    If !fileContents
        MsgBox Unable to load file: %filePath%
    Else {
        Sleep 100
        SendInput {Raw}%fileContents%

        If sendEnter = 1
            Send {Enter}
    }

}