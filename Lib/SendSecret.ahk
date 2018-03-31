;##########################################################################################################
; Function: Send the contents of a secrets file
;##########################################################################################################
SendSecret( filePath, sendEnter ) {

    SendFileContents( A_ScriptDir . "\.Secrets\" . filePath, sendEnter )

}