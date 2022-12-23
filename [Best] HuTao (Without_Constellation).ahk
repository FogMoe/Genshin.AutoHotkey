#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#IfWinActive
~RButton::Suspend
~MButton::Suspend

#IfWinActive
LButton::
    SetTimer, PressSpace, 0
    return

PressSpace:
  GetKeyState, state, LButton, P
  if state = U
  {
    BlockInput, SendAndMouse
    SetKeyDelay, -1  
    SendInput, {LButton down}
    Sleep, 450
    SendInput, {LButton up}
    Send, {Space}   
    Sleep, 450
    BlockInput, Default
    SetTimer, PressSpace, Off
  }
  return

/*
    https://github.com/scarletkc/Genshin.AutoHotkey
*/

