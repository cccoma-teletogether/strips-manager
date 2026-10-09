@echo off
setlocal
cd /d "%~dp0"
where python >nul 2>nul
if errorlevel 1 (
  echo Python is not installed or not on PATH.
  pause
  exit /b 1
)
set STRIPSMGR_PORT=8010
start "StripsMgr" /min python "%~dp0server.py"
echo StripsMgr is starting on http://localhost:8010/strips-manager.html
echo Close the server window to stop it.
endlocal
