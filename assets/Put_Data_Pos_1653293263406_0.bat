set glob=c:\server\bin\glob.exe
set path=%path%;c:\server\bin\
set status=MIN
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

c:

rem \web\mtxwm\gm\bin\showwin %status%
if exist \nds\m_lan999.old del \nds\m_lan999.old

rem Setting ip
cd\dp4
grep "SET MPLS=" \server\mtx7\install\predef\predef > MPLS.bat
set MPLS=NO
call MPLS.bat
if "%MPLS%" == "YES" (
java GetIP ip.bat 3
call ip.bat
set net=3
) else (
java GetIP ip.bat 2
call ip.bat
set net=2
)
if "%net%" == "3" (
set ip=%IP3%
echo " FULL MPLS NETWORK FOUND "
)
if "%net%" == "2" (
set ip=%IP2%.25
echo  " STANDARD NETWORK FOUND "
)

cd\nds

call getreg c
for /f %%a in (reg.cnt) do call :fix %%a
goto :end


:fix
if exist %FOLDER%\nul (
	cd %FOLDER%
	) else (
	echo WHERE is the DATA?
	goto END
	)

net use b: /d
set till=%1
if "%MPLS%"=="YES" set /a till=(%till%+10)
net use b: \\%ip%.%till%\reg\gd90 /user:reg reg
if not exist b:\nul goto :error %1
echo POS %till%
copy /Z S_???%1.DAT b:\data\S_???%1.DAT
net use b: /d
plink -ssh %ip%.%till% -l root -pw root "echo YES > /home/reg/gd90/99CHECK.cfg; init 6"<ENTER
goto END

:error
echo cannot connect to till %1 >> c:\nds\put_data.txt
goto END

:END