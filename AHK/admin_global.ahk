#NoEnv
#SingleInstance, force

#q:: ; Closes the active window
IfWinExist, ahk_exe VALORANT-Win64-Shipping.exe
	Run, "./valorantclose.bat"
if WinActive("ahk_exe VALORANT-Win64-Shipping.exe")
	Run, "./valorantclose.bat"
else
	WinGetTitle, Title, A
	PostMessage, 0x112, 0xF060,,, %Title%
return
