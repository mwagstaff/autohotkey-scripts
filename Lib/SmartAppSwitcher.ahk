;##########################################################################################################
; Function: Press Win-Tab, and select previous app for easy switching
;##########################################################################################################
SmartAppSwitcher() {

    Send {LWinDown}{Tab}{LWinUp}    ; Load Task Switcher
    Sleep 200
    Send {Right}                    ; Press right to select the previous app for quick switching

}