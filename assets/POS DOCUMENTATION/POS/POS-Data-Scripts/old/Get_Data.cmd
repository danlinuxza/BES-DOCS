@echo off

set glob=c:\server\bin\glob.exe
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
echo USING IP MASK: %POSIP% 

:POSDATA

echo POS %1

if not exist \nds\bytes\POSDATA\data md \nds\bytes\POSDATA\data
if not exist \nds\bytes\POSDATA\safe md \nds\bytes\POSDATA\safe
if not exist \nds\bytes\POSDATA\safeinit md \nds\bytes\POSDATA\safeinit
cd\nds\bytes\POSDATA
net use w: /d
net use w: \\%POSIP%25.%1\reg\gd90 /user:reg reg
copy w:\data\* data
copy w:\safe\* safe
copy w:\safeinit\* safeinit
net use w: /d

:END
