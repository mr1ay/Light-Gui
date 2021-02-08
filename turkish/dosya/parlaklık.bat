	@echo off
	chcp 65001
	mode 35,2
	set /p yer=<yer.mr1ay
	title a
	mwin a %yer%

	title parlaklık=

		:Menu
			cls
			echo.
			echo.0 -10-20-30-40-50-60-70-80-90-100 
 
			call batboxmouse.bat
				if %x% geq 0  if %x% leq 2  call :light 0 
				if %x% geq 4  if %x% leq 5  call :light 10 
				if %x% geq 7  if %x% leq 8  call :light 20 
				if %x% geq 10 if %x% leq 11 call :light 30 
				if %x% geq 13 if %x% leq 14 call :light 40 
				if %x% geq 16 if %x% leq 17 call :light 50 
				if %x% geq 19 if %x% leq 20 call :light 60 
				if %x% geq 22 if %x% leq 23 call :light 70 
				if %x% geq 25 if %x% leq 26 call :light 80
				if %x% geq 28 if %x% leq 29 call :light 90 
				if %x% geq 31 if %x% leq 32 call :light 100 

			timeout /t 2 >nul
			goto :Menu


			:light
				title "lütfen bekle"
				powershell -Command "(Get-WmiObject -Namespace root/WMI -Class WmiMonitorBrightnessMethods).WmiSetBrightness(1,%1)"
				title "parlaklık=%1"
				goto :eof

