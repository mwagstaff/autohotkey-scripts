;##########################################################################################################
; Win-/: Show hotkey list
;##########################################################################################################
#/:: ShowHotkeyList()


;##########################################################################################################
; Win-CapsLock: Enable / disable CapsLock
;##########################################################################################################
; Source - https://gist.github.com/Danik/5808330
#Capslock::
If GetKeyState("CapsLock", "T") = 1
    SetCapsLockState, AlwaysOff
Else 
    SetCapsLockState, AlwaysOn
Return


;##########################################################################################################
; Win-V: Paste without formatting
;##########################################################################################################
; Source - https://autohotkey.com/board/topic/10412-paste-plain-text-and-copycut/
#v::                            ; Text–only paste from ClipBoard
Clip0 = %ClipBoardAll%
ClipBoard = %ClipBoard%       ; Convert to text
Send ^v                       ; For best compatibility: SendPlay
Sleep 50                      ; Don't change clipboard while it is pasted! (Sleep > 0)
ClipBoard = %Clip0%           ; Restore original ClipBoard
VarSetCapacity(Clip0, 0)      ; Free memory
Return