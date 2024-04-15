@echo off
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
color 9
echo Credit to Imistrz21 on GitHub
echo ==================================
echo Welcome to LightExplorer!
echo.
echo Please enter a command:
echo ls - List files and directories
echo cd - Change directory
echo mkdir - Create a new directory
echo copy - Copy files or directories
echo move - Move files or directories
echo del - Delete files or directories
echo exit - Exit LightExplorer
echo.
echo ==================================
echo Credit to Imistrz21 on GitHub
echo.
echo Enter a command bellow: && set /p choice=""


if "%choice%"=="ls" goto list_files
if "%choice%"=="cd" goto change_directory
if "%choice%"=="mkdir" goto create_directory
if "%choice%"=="copy" goto copy_files
if "%choice%"=="move" goto move_files
if "%choice%"=="del" goto delete_files
if "%choice%"=="exit" goto exit_program

echo Invalid choice. Please try again.
goto menu

:list_files
cls
Echo Listing files.
dir
timeout /t 1 >nul
goto menu

:change_directory
cls
echo Changing directory.
echo.
set /p newdir="Enter directory path: "
cd %newdir%
timeout /t 1 >nul
goto menu

:create_directory
cls
echo Creating an directory.
set /p dirname="Enter new directory name: "
mkdir %dirname%
timeout /t 1 >nul
goto menu

:copy_files
cls
echo Copying files.
set /p source="Enter source file/directory: "
set /p destination="Enter destination directory: "
copy %source% %destination%
timeout /t 1 >nul
goto menu

:move_files
cls
echo Moving files.
set /p source="Enter source file/directory: "
set /p destination="Enter destination directory: "
move %source% %destination%
timeout /t 1 >nul
goto menu

:delete_files
cls
echo Deleting files.
set /p target="Enter file/directory to delete: "
del /s %target%
timeout /t 1 >nul
goto menu

:exit_program
cls
echo c
echo Exiting LightExplorer...
timeout /t 1 >nul
exit
