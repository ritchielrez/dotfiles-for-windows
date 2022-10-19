#NoEnv
#SingleInstance, force

#q:: ; Closes the active window
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return
