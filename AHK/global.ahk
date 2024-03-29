#SingleInstance, force
#NoEnv
#Include trayicon.ahk ; Includes a script, which allow to click on specific tray icons

#w:: 
; Checks if Edge already Running, if it's, focuses on the window. If it's already focused,
; press Ctrl+Tab in the Microsoft Edge, otherwise just launch the app
IfWinNotExist, ahk_exe msedge.exe
    Run, "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
if WinActive("ahk_exe msedge.exe")
    Send ^{tab}
else 
    WinActivate, ahk_exe msedge.exe
Return

#+d:: 
; Waits for the program to launch
; Sleep, 100

Process, Exist, Discord.exe

if ErrorLevel = 0
{
    Run, "C:\Users\strange.ritchiel\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Discord Inc\Discord.lnk"
}
else
{
    TrayIcon_Button("Discord.exe")
}

if not WinActive("ahk_exe Chrome_WidgetWin_1 ahk_exe Discord.exe") 
{
    WinActivate, ahk_exe Discord.exe
}

Return

!d:: Run, "G:\googlesearchlnk"

!s:: Run, "C:\Users\strange.ritchiel\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Spotify.lnk" 

#Enter:: 
; Waits for the program to launch
; Sleep, 250
IfWinNotExist, ahk_exe wezterm-gui.exe
    Run, wezterm-gui
GroupAdd, terminals, ahk_class org.wezfurlong.wezterm

if WinActive("ahk_exe wezterm-gui.exe")
    GroupActivate, terminals, r
else 
    WinActivate ahk_exe wezterm-gui.exe

Return

#e:: 
IfWinNotExist, ahk_class CabinetWClass
    Run, explorer.exe
GroupAdd, explorers, ahk_class CabinetWClass

if WinActive("ahk_exe explorer.exe")
    GroupActivate, explorers, r
else 
    WinActivate ahk_class CabinetWClass
Return

#c:: Run, "code" ; Launches Vscode

#+b:: 
; Waits for the program to launch
Sleep, 250

; Checks if Bitwarden already Running, if it's, activates it. Otherwise launches the app
IfWinNotExist, ahk_exe Bitwarden.exe
    Run, "C:\Program Files\Bitwarden\Bitwarden.exe"
WinActivate, ahk_exe Bitwarden.exe
Return

#+r:: Reload
#+e:: Run, "./edit.bat"

!q:: !f4 ; When you press Alt+q, it sends to windows the Alt+F4 shortcut
