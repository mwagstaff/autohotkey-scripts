;##########################################################################################################
; Alt-Win-T: Copy active window's title to clipboard
;##########################################################################################################
!#t::
WinGetTitle winTitle, A
Clipboard := winTitle
ToolTip Window title copied to clipboard: %winTitle%
Sleep 2000
ToolTip
Return