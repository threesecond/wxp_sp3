CLS
@ECHO OFF
COLOR 70
MODE CON COLS=65 LINES=20
IF "%1" == "/n" Goto NoBackup
IF "%1" == "/N" Goto NoBackup

ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows XP SP2 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO   2. Windows Media Player 10 ���᪺�Ҧ��ץ���(�]�t�ƥ��t����)
ECHO.   
ECHO                                           ��s����G2008/10/28
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows XP SP2 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wxpsp2\hotfix1\WindowsXP-KB*.exe) do start /wait %%i /U /Z
for %%i in (wxpsp2\hotfix1\WindowsMedia*.exe) do start /wait %%i /U /Z
start /wait wxpsp2\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /U /Z
start /wait wxpsp2\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /U /Z
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wxpsp2\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (wxpsp2\hotfix3\*.exe) do start /wait %%i /U /Z
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (wxpsp2\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
start /wait wxpsp2\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy wxpsp2\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
xcopy wxpsp2\hotfix5\wuweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait regsvr32 /s wuweb.dll
start /wait wxpsp2\hotfix5\wusetup.exe /quiet /norestart
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Windows Media Player 10 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp10\hotfix1\*.exe) do start /wait %%i /U /Z
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp10\hotfix2\*.exe) do start /wait %%i /U /Z
ECHO      �w�˧����C
ECHO.
Goto End

:NoBackup
ECHO.
ECHO ----------------------------------------------------------------
ECHO   �H�U�N�۰ʦw�˪��n��
ECHO   1. Windows XP SP2 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO   2. Windows Media Player 10 ���᪺�Ҧ��ץ���(�N���ƥ��t����)
ECHO.   
ECHO                                           ��s����G2008/10/28
ECHO ----------------------------------------------------------------
ECHO.
ECHO   1. ���b�w�� Windows XP SP2 ���᪺�Ҧ��ץ��ɡA�еy��...
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wxpsp2\hotfix1\WindowsXP-KB*.exe) do start /wait %%i /U /Z /N
for %%i in (wxpsp2\hotfix1\WindowsMedia*.exe) do start /wait %%i /U /Z /N
start /wait wxpsp2\hotfix1\Windows-KB909520-v1.000-x86-CHT.exe /U /Z /N
start /wait wxpsp2\hotfix1\StepByStepInteractiveTraining-KB923723-x86-CHT.exe /U /Z /N
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wxpsp2\hotfix2\*.exe) do start /wait %%i /Q:U /R:N
ECHO      �u���b�w�� HotFix Type 3�A�еy��...
for %%i in (wxpsp2\hotfix3\*.exe) do start /wait %%i /U /Z /N
ECHO      �u���b�w�� HotFix Type 4�A�еy��...
for %%i in (wxpsp2\hotfix4\*.exe) do start /wait %%i /Q
ECHO      �u���b�w�� Microsoft Update ����A�еy��...
start /wait wxpsp2\hotfix5\WUSETUP.EXE /wuforce /quiet /norestart
xcopy wxpsp2\hotfix5\muweb.dll %SystemRoot%\System32\ /y > nul
xcopy wxpsp2\hotfix5\wuweb.dll %SystemRoot%\System32\ /y > nul
start /wait regsvr32 /s muweb.dll
start /wait regsvr32 /s wuweb.dll
start /wait wxpsp2\hotfix5\wusetup.exe /quiet /norestart
ECHO      �w�˧����C
ECHO.
ECHO   2. ���b�w�� Windows Media Player 10 ���᪺�Ҧ��ץ��ɡA�еy��..
ECHO      �u���b�w�� HotFix Type 1�A�еy��...
for %%i in (wmp10\hotfix1\*.exe) do start /wait %%i /U /Z /N
ECHO      �u���b�w�� HotFix Type 2�A�еy��...
for %%i in (wmp10\hotfix2\*.exe) do start /wait %%i /U /Z /N
ECHO      �w�˧����C
ECHO.
Goto End

:End
EXIT

