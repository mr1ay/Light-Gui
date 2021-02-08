@echo off
chcp 65001
if not exist dosya (
			echo. uyarı
			echo. "dosya" klasörüne dikkat et 
			timeout /t 2 >nul
			exit )
if exist dosya ( 	cd dosya
		 	call parlaklık.bat )