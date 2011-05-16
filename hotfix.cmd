CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows XP SP2 之後的所有修正檔(包含備份系統檔)
ECHO   2. Windows Media Player 10 之後的所有修正檔(包含備份系統檔)
ECHO.   
ECHO                                           更新日期：2008/10/28
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows XP SP2 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wxpsp2\hotfix1\WindowsXP-KB*.exe) do start /wait %%i /U /Z
for %%i in (wxpsp2\hotfix1\WindowsMedia*.exe) do start /wait %%i /U /Z
start /wait wxpsp2\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /U /Z
start /wait wxpsp2\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /U /Z
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wxpsp2\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (wxpsp2\hotfix3\*.exe) do start /wait %%i /U /Z
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (wxpsp2\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
start /wait wxpsp2\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy wxpsp2\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
xcopy wxpsp2\hotfix5\wuweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait regsvr32 /s wuweb.dll
start /wait wxpsp2\hotfix5\wusetup.exe /quiet /norestart
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Windows Media Player 10 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp10\hotfix1\*.exe) do start /wait %%i /U /Z
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp10\hotfix2\*.exe) do start /wait %%i /U /Z
ECHO      安裝完成。
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   以下將自動安裝的軟體
ECHO   1. Windows XP SP2 之後的所有修正檔(將不備份系統檔)
ECHO   2. Windows Media Player 10 之後的所有修正檔(將不備份系統檔)
ECHO.   
ECHO                                           更新日期：2008/10/28
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. 正在安裝 Windows XP SP2 之後的所有修正檔，請稍後...
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wxpsp2\hotfix1\WindowsXP-KB*.exe) do start /wait %%i /U /Z /N
for %%i in (wxpsp2\hotfix1\WindowsMedia*.exe) do start /wait %%i /U /Z /N
start /wait wxpsp2\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /U /Z /N
start /wait wxpsp2\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /U /Z /N
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wxpsp2\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      ├正在安裝 HotFix Type 3，請稍後...
for %%i in (wxpsp2\hotfix3\*.exe) do start /wait %%i /U /Z /N
ECHO      ├正在安裝 HotFix Type 4，請稍後...
for %%i in (wxpsp2\hotfix4\*.exe) do start /wait %%i /Q
ECHO      ├正在安裝 Microsoft Update 元件，請稍後...
start /wait wxpsp2\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy wxpsp2\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
xcopy wxpsp2\hotfix5\wuweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait regsvr32 /s wuweb.dll
start /wait wxpsp2\hotfix5\wusetup.exe /quiet /norestart
ECHO      安裝完成。
ECHO.
ECHO   2. 正在安裝 Windows Media Player 10 之後的所有修正檔，請稍後..
ECHO      ├正在安裝 HotFix Type 1，請稍後...
for %%i in (wmp10\hotfix1\*.exe) do start /wait %%i /U /Z /N
ECHO      ├正在安裝 HotFix Type 2，請稍後...
for %%i in (wmp10\hotfix2\*.exe) do start /wait %%i /U /Z /N
ECHO      安裝完成。
ECHO.
Goto End

:End
EXIT

