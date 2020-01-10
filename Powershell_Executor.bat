@echo off
cd C:\LOCATION\OF\SCRIPTS
setlocal enabledelayedexpansion
set index=1
FOR %%f in (*.*) DO (
	set file!index!=%%f
	echo !index! - %%f
	SET /A index=!index!+1
)

set /p answer=Enter the number of the script you would like to run: 
set count=1
FOR %%i in (*.*) DO (
	set !count!=%%i
	IF "!count!" equ "%answer%" Powershell.exe -noprofile -ExecutionPolicy Bypass -File C:\LOCATION\OF\SCRIPTS\%%i
	set /a count=!count!+1		
)
