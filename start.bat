setlocal EnableDelayedExpansion
:loop
@echo on
py alys.py
IF EXIST "tmp.txt" ( 
	set /p bool=<tmp.txt
	del tmp.txt
	if "!bool!"=="true" goto :loop
)
pause