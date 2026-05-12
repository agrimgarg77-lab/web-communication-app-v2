@echo off
title Setup New Repository - Web Communication App
color 0B

echo.
echo ========================================
echo    New Repository Setup Tool
echo ========================================
echo.
echo This will create a fresh repository for clean deployment
echo.

echo [1/5] Creating new project folder...
mkdir "C:\Users\Agrim\Documents\web-communication-app-v2" 2>nul
if not exist "C:\Users\Agrim\Documents\web-communication-app-v2" (
    echo ERROR: Failed to create new folder
    pause
    exit /b 1
)

echo [2/5] Copying all files to new folder...
xcopy "C:\Users\Agrim\Documents\ahahah\*" "C:\Users\Agrim\Documents\web-communication-app-v2\" /E /H /C /I /Y > nul
if %errorlevel% neq 0 (
    echo ERROR: Failed to copy files
    pause
    exit /b 1
)

echo [3/5] Initializing Git in new folder...
cd /d "C:\Users\Agrim\Documents\web-communication-app-v2"
git init > nul 2>&1
git add . > nul 2>&1
git commit -m "Initial commit: Complete web communication app with all features" > nul 2>&1
if %errorlevel% neq 0 (
    echo ERROR: Failed to initialize Git
    pause
    exit /b 1
)

echo [4/5] Ready for GitHub setup...
echo.
echo Next steps:
echo 1. Go to github.com and create a new repository named "web-communication-app-v2"
echo 2. Copy the repository URL (https://github.com/YOUR_USERNAME/web-communication-app-v2.git)
echo 3. Run the commands below:
echo.
echo    git remote add origin YOUR_REPOSITORY_URL
echo    git branch -M main
echo    git push -u origin main
echo.

echo [5/5] Opening GitHub for repository creation...
start https://github.com/new

echo.
echo ========================================
echo    Setup Completed!
echo ========================================
echo.
echo Your new project is ready at:
echo C:\Users\Agrim\Documents\web-communication-app-v2
echo.
echo After creating the GitHub repository and pushing:
echo 1. Go to vercel.com
echo 2. Click "New Project"
echo 3. Import your new repository
echo 4. Deploy!
echo.
echo Press any key to open the new project folder...
pause > nul
explorer "C:\Users\Agrim\Documents\web-communication-app-v2"

echo.
echo Press any key to open Vercel for deployment...
pause > nul
start https://vercel.com/new

echo.
echo Setup complete! Your fresh repository is ready for deployment.
pause > nul
