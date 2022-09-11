#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

ActiveStatus:=false
~XButton2:: ; Switch.
    if (ActiveStatus=true){
        ActiveStatus:=false
    }
    else {
        ActiveStatus:=true
    }
Return
#If ActiveStatus=true  
LButton:: ; Edit this line to change the hotkey.
    SetTimer, KokomiA, 0
    Sleep 900  
    SetTimer, KokomiA, Off
Return
#If
~LShift::
    SetTimer, KokomiA, Off
Return
KokomiA:
    Click Left
    Sleep 100
    Click Left
    Sleep 700
    Send W
    Sleep 100
Return

/*
    https://github.com/scarletkc/Genshin.AutoHotkey
*/