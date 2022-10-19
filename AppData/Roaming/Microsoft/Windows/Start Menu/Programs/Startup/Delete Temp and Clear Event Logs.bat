echo off
cls
del /s /f /q c:\windows\temp\*.* 
del /s /f /q c:\WINDOWS\Prefetch\*.* 
del /s /f /q %temp%\*.* 
for /f "tokens=1,2*" %%V IN ('bcdedit') do set adminTest=%%V
if (%adminTest%)==(Access) exit
for /f "tokens=*" %%G in ('wevtutil.exe el') do (call :wevtutil "%%G")

:wevtutil
echo clearing %1
wevtutil.exe cl %1
exit