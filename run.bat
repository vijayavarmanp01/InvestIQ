@echo off
cd /d "%~dp0"
echo Starting INVESTIQ...
start "INVESTIQ Backend (3001)" cmd /k "cd /d Finanace-Planner\backend && set PORT=3001 && node server.js"
start "INVESTIQ Loan (3002)" cmd /k "cd /d Finanace-Planner\loan && node server.js"
echo.
echo Backend:  http://localhost:3001
echo Loan app: http://localhost:3002
echo.
echo Two console windows opened. Close them to stop the servers.
pause
