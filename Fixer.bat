:Fixer
@echo off
@Title Fixer - Hax MultiTool v3
cls
echo.
echo PC Fixer
echo.
pause
cls
echo.
echo PC Fixer
echo.
echo Step 1. Please Wait
sfc /scannow
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Please Wait
dism /online /cleanup-image /checkhealth
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Please Wait
dism /online /cleanup-image /scanhealth
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Please Wait
dism /online /cleanup-image /restorehealth
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Trying Additional Operations... 
dism /online /cleanup-image /restorehealth /Source:repairSource\install.wim
if ERRORLEVEL == 1 goto goonfix 
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations. Completed
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations. Completed
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp%
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations. Completed
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp"
goto fixfins
:goonfix
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed, but its ok
echo Step 5. Follow the steps on the screen
timeout -t 1 -nobreak >nul
sigverif
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed, but its ok
echo Step 5. Completed
echo Step 6. Please Wait
del /q /f /s %temp%
cls
echo.
echo PC Fixer
echo.
echo Step 1. Completed
echo Step 2. Completed
echo Step 3. Completed
echo Step 4. Completed
echo Additional Operations Failed, but its ok
echo Step 5. Completed
echo Step 6. Completed
echo Step 7. Please Wait
del /q /f /s "C:\Windows\Temp"
:fixfins
cls
echo.
echo Pc Fixer: All operations have been done. Please restart your machine.
choice /c YN /m "Restart?"
if ERRORLEVEL == 1 shutdown /r /t 1 else msg * thanks for using Hax MultiTool v3. By Chroma && exit