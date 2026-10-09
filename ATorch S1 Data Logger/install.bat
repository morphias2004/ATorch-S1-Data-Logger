@echo off
TITLE ATorch S1 Data Logger - Setup Installer
COLOR 0A

echo ====================================================
echo    ATorch S1 Data Logger - Automatic Installer
echo ====================================================
echo.

:: 1. Check if Python is installed
python --version >nul 2>&1
if errorlevel 1 (
    COLOR 0C
    echo [ERROR] Python is not installed or not added to PATH!
    echo Please download and install Python from https://www.python.org/
    echo Make sure to check "Add Python to PATH" during installation.
    pause
    exit /b
)

echo [OK] Python detected successfully.
echo.

:: 2. Create Python Virtual Environment
echo Creating virtual environment (venv)...
if not exist "venv" (
    python -m venv venv
    echo [OK] Virtual environment created.
) else (
    echo [INFO] Virtual environment already exists. Skipping creation.
)
echo.

:: 3. Upgrade Pip and Install Dependencies
echo Installing required packages (tinytuya, matplotlib)...
call venv\Scripts\activate
python -m pip install --upgrade pip
pip install -r requirements.txt
echo [OK] Dependencies installed successfully.
echo.

:: 4. Create Shortcuts (Desktop & Project Root Folder) using pythonw.exe
echo Creating Shortcuts (Desktop and Project Root)...
powershell -Command "$ws = New-Object -ComObject WScript.Shell; $paths = @([System.Environment]::GetFolderPath('Desktop') + '\ATorch S1 Data Logger.lnk', '%~dp0\ATorch S1 Data Logger.lnk'); foreach ($p in $paths) { $sc = $ws.CreateShortcut($p); $sc.TargetPath = '%~dp0venv\Scripts\pythonw.exe'; $sc.Arguments = '\"%~dp0atorch_gui.py\"'; $sc.WorkingDirectory = '%~dp0'; $sc.Save() }"
echo [OK] Shortcuts created successfully.
echo.

echo ====================================================
echo    Installation Complete!
echo ====================================================
echo.
echo You can now launch the app using the shortcut created 
echo on your Desktop or inside the project folder.
echo.
pause