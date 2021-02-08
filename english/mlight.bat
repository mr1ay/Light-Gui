@echo off
if not exist folder (
			echo. warning
			echo. make sure from "folder" 
			timeout /t 2 >nul
			exit )
if exist folder ( 	cd folder
			call mlight)