set glob=c:\server\bin\glob.exe
set path=%path%;c:\server\bin\
set status=MIN
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
net use b: /d
set till=%1
if "%MPLS%"=="YES" set /a till=(%till%+10)
net use b: \\%ip%.%till%\reg\gd90 /user:reg reg
if not exist b:\nul goto :error %1
echo POS %1
if not exist \nds\bytes\POSDATA\data md \nds\bytes\POSDATA\data
if not exist \nds\bytes\POSDATA\safe md \nds\bytes\POSDATA\safe
if not exist \nds\bytes\POSDATA\safeinit md \nds\bytes\POSDATA\safeinit
cd\nds\bytes\POSDATA
copy b:\data\* data
copy b:\safe\* safe
copy b:\safeinit\* safeinit
net use b: /d
:END

:error
echo cannot connect to till %1 >> c:\nds\get_data.txt
goto :end

:END