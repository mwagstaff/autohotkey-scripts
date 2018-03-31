;##########################################################################################################
; Apply default settings
;##########################################################################################################
#SingleInstance Force           ; Only allow one instance of the script
#Persistent                     ; Ensure the script remains running
;#NoEnv                          ; Disables environment variable lookup (improves performance)

SetTitleMatchMode RegEx         ; Match window titles by regex
SendMode Input                  ; Use SendInput by default (fast, reliable)
SetCapsLockState, AlwaysOff     ; Disable CapsLock key (Win-CapsLock to enable)


;##########################################################################################################
; Startup functions
;##########################################################################################################
GenerateHotKeyList()

;##########################################################################################################
; Include shortcut keys
;##########################################################################################################
#Include %A_ScriptDir%\Lib\ShortcutKeys\Alt.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\AltWin.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\CapsLock.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\Ctrl.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\CtrlAlt.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\Esc.ahk
#Include %A_ScriptDir%\Lib\ShortcutKeys\Win.ahk