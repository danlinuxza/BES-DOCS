@Echo Off

:: CDAT.BAT Syntax: CDat OldDir NewDir [Date]

Set ToDay=%3
If not "%ToDay%"=="" GoTo EXEC
For /F "Tokens= 1* Delims= " %%a in ('Date /T') Do Set ToDay=%%b
:EXEC
Dir %1 | Find "%ToDay%" | Find /V "DIR" > %2\%0$1.tmp
For /F "Tokens=4 Delims= " %%i in (%2\%0$1.tmp) Do Copy %1\%%i %2
Del %2\%0$1.tmp
Set ToDay=