@echo off
setlocal EnableDelayedExpansion
set "current_dir=%~dp0"
cd /d !current_dir! 
call Scripts\activate.bat
start /wait http://127.0.0.1:7860
start python.exe chatgpt_web.py
timeout /t 3 /nobreak >nul
exit cmd
pause
