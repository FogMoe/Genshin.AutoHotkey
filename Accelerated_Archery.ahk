#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ActiveStatus:=false
~XButton2:: ; Switch.
    if (ActiveStatus=true){
        ActiveStatus:=false
        SetTimer, AcceleratedArchery, Off
    }
    else {
        ActiveStatus:=true
    }
Return
#If ActiveStatus=true  
LButton:: ; Edit this line to change the hotkey.
    SetTimer, AcceleratedArchery, 0
Return
#If
~LShift::
    SetTimer, AcceleratedArchery, Off
Return
AcceleratedArchery:
    SendEvent {Click Left}
    Sleep 270
    SendEvent {Click Left}
    Sleep 270
    Send R
    Send R
    Sleep 80
Return

/*
    https://github.com/scarletkc/Genshin.AutoHotkey
*/