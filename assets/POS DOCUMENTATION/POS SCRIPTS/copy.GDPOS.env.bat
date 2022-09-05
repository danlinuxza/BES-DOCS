@echo off

:SETVARI
set PATH=%PATH%;c:\server\bin;c:\dp4;c:\web\mtxwm\gm\bin
set LOG=c:\nds\REGcopy.LOG
for %%a in (%LOG%) do if exist %%a del %%a

:GETIP
if exist \gm\bin\host-ip.exe (
  call \gm\bin\host-ip.exe
  ) else (
  call \web\mtxwm\gm\bin\host-ip.exe
  )

\server\bin\grep -v echo serv-ip.bat|\server\bin\Cut -c 14-20>ip.txt
if not exist \dp4\setvar.exe copy \bosupd\setvar.exe \dp4\setvar.exe
\dp4\setvar.exe IP ip.txt
call setvar.bat

:GETREGCNT
set glob=c:\server\bin\glob.exe
\server\bin\grep "^R" c:\server\m_lanxxx.org|\server\bin\cut -c 3-5> reg.cnt

for /F %%a in (reg.cnt) do call :CONNECT %%a
  
:CONNECT

net use w: /d
net use w: \\%IP%.25.%1\reg\gd90 /user:reg reg
if errorlevel 1 goto MAPFAIL
goto WHATTODO

:WHATTODO
echo COPYING GdPosSA TO LANE %1
echo COPYING GdPosSA TO LANE %1 >>%LOG%
c:
copy GdPosSA.env w:\
c:
echo DONE WITH LANE %1
echo DONE WITH LANE %1 >>%LOG%
goto :EOF

:MAPFAIL
echo UNABLE TO MAP DRIVE LANE %1
echo UNABLE TO MAP DRIVE LANE %1 - IP %IP%.25.%1 >>%LOG%
goto :EOF

:END
net use w: /d
