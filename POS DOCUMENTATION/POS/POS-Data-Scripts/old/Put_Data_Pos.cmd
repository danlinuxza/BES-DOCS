@echo off

rem Environment Variables
set PATH=%PATH%;c:\server\bin;c:\dp4;c:\web\mtxwm\gm\bin;c:\progra~1\putty
set glob=c:\server\bin\glob.exe
echo Y > ENTER

if "%1"=="REBOOT" (
	set REBOOT=YES
	) else (
	set REBOOT=NO
	)

echo *********************************************
echo PLEASE ENTER FOLDER LOCATION
echo Eg. c:\nds\fabulous
echo *********************************************
echo.

set /p FOLDER=

\server\bin\grep "^R" c:\server\m_lanxxx.org|\server\bin\cut -c 3-5> reg.cnt
for /F %%a in (reg.cnt) do call :PROCESS %%a
goto END

:PROCESS

if exist \bosupd\POS-IP.EXE (
  \bosupd\POS-IP.EXE
  call POS-IP.BAT
  del POS-IP.BAT
  ) else (
  host-ip.exe
  grep -v echo serv-ip.bat|\server\bin\Cut -c 14-21>ip.txt
  %DP4BAT%\setvar.exe POSIP ip.txt
  call setvar.bat
  del setvar.bat
  )
echo USING IP MASK: %POSIP%25.%1

if %REBOOT%==YES goto REBOOT

:POSDATA

echo POS %1

if exist %FOLDER%\nul (
	cd %FOLDER%
	) else (
	echo WHERE is the DATA?
	goto END
	)

net use w: /d
net use w: \\%POSIP%25.%1\reg\gd90 /user:reg reg
copy /Z S_???%1.DAT w:\data\S_???%1.DAT
net use w: /d
plink -ssh %POSIP%25.%1 -l root -pw root "echo YES > /home/reg/gd90/99CHECK.cfg; init 6"<ENTER
goto END

:REBOOT
plink -ssh %POSIP%25.%1 -l root -pw root "init 6"<ENTER

:ERR
cls
echo.
echo NO FOLDER PROVIDED FOR DATA

:END
