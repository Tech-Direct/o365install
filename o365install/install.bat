@echo off
cls
:start
set /p uDate=<lastupdated.txt
echo Script for downloading and pre-installing Office 365
echo By James Watt
echo.
echo Do not run this from a network location.
echo ---
echo 1. Download or update source
echo 2. Install Office on this PC
echo 3. Quit
set choice= 
set /p choice=Type option number to continue: 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto download
if '%choice%'=='2' goto install
if '%choice%'=='3' goto end
echo "%choice%" is not valid, try again
echo.
goto start

:download
echo.
echo.
if not "%uDate%"=="0000-00-00" echo Source was last updated on %udate%
if "%uDate%"=="0000-00-00" echo Initializing first download of data.
echo Exit this window to cancel. Or press any key to continue.
echo Do NOT cancel once download has begun.
pause
setup.exe /download configuration.xml
date /t > lastupdated.txt
echo.
echo Download is complete.
echo ---
echo 1. Return to main menu
echo 2. Install
echo 3. Quit
set /p choiceb=Type option number to continue:
if not '%choiceb%'=='' set choiceb=%choiceb:~0,1%
if '%choiceb%'=='1' goto start
if '%choiceb%'=='2' goto install
if '%choiceb%'=='3' goto end
goto end

:install
echo.
echo.
if "%uDate%"=="0000-00-00" goto download
echo Source was last updated on %udate%
echo (Please update if the source is older than 30 days.)
echo Exit this window to cancel. Or press any key to continue.
echo Do NOT cancel once the install has begun.
pause
setup.exe /configure configuration.xml
echo.
echo install is complete.
pause
gotoend
