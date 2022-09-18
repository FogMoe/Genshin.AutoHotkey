#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

DesktopGui:
Gui, Add, CheckBox,checked1 vActiveStatus -Wrap, Press the key "P" to use.
Gui, Show, Center, One-Click Custom Pin
Return
~p::
    Gui, Submit, NoHide
    if (ActiveStatus=1){
        Send M
        Sleep 600
        Loop 80 {
            Click WheelUp
        }
        Sleep 450
        SendEvent {Click Left}   
        Sleep 400     
        ImageSearch, OutputVarX, OutputVarY, X1, Y1, A_ScreenWidth, A_ScreenHeight, *10 Resources\Button_Confirm.bmp
        Sleep 300
        SendEvent {Click, %OutputVarX% %OutputVarY%}
        Sleep 500
        Send {Escape}     
    }
Return
GuiClose:
ExitApp

/*
    https://github.com/scarletkc/Genshin.AutoHotkey
*/