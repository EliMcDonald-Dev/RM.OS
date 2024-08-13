@echo off

:VBSDynamicBuild
SET TempVBSFile=%temp%\~tmpSendKeysTemp.vbs
IF EXIST "%TempVBSFile%" DEL /F /Q "%TempVBSFile%"
ECHO Set WshShell = WScript.CreateObject("WScript.Shell") >>"%TempVBSFile%"
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"
ECHO WshShell.SendKeys "{F11}"                            >>"%TempVBSFile%
ECHO Wscript.Sleep 900                                    >>"%TempVBSFile%"

CSCRIPT //nologo "%TempVBSFile%"

echo.
type logo.txt
echo.
type 1\logo.txt 
type 2\logo.txt 
type 3\logo.txt 
type 4\logo.txt 
type 5\logo.txt 
type 6\logo.txt 
echo.
set /p select="Enter App # in list or type Exit to exit: "
if %select%==1 (goto app1)
if %select%==2 (goto app2)
if %select%==3 (goto app3)
if %select%==4 (goto app4)
if %select%==5 (goto app5)
if %select%==6 (goto app6)
if %select%==Exit (Exit)


:app1
cd "1\"
start run.bat
@timeout /t 1 /nobreak
exit

:app2
cd "2\"
start run.bat
@timeout /t 1 /nobreak
exit

:app3
cd "3\"
start run.bat
@timeout /t 1 /nobreak
exit

:app4
cd "4\"
start run.bat
@timeout /t 1 /nobreak
exit

:app5
cd "5\"
start run.bat
@timeout /t 1 /nobreak
exit

:app6
cd "6\"
start run.bat
@timeout /t 1 /nobreak
exit