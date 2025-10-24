@echo off
echo ========================================
echo Upload to GitHub Repository
echo ========================================
echo.

echo Your GitHub repository: https://github.com/bharathtechacademy/course-app
echo.

echo This script will help you upload the Android app to your GitHub repository.
echo.

echo Step 1: Initialize Git Repository
echo --------------------------------
echo Initializing git repository...
git init

echo.
echo Step 2: Add All Files
echo --------------------
echo Adding all project files...
git add .

echo.
echo Step 3: Commit Files
echo -------------------
echo Committing files...
git commit -m "Add Bharath Tech Academy Course App - Complete Android Application"

echo.
echo Step 4: Add Remote Repository
echo ----------------------------
echo Adding remote repository...
git remote add origin https://github.com/bharathtechacademy/course-app.git

echo.
echo Step 5: Push to GitHub
echo --------------------
echo Pushing to GitHub repository...
git branch -M main
git push -u origin main

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo 🎉 UPLOAD SUCCESSFUL! 🎉
    echo ========================================
    echo.
    echo Your Android app has been uploaded to:
    echo https://github.com/bharathtechacademy/course-app
    echo.
    echo Next steps:
    echo 1. Go to your repository on GitHub
    echo 2. Go to Actions tab
    echo 3. Click "Build Android APK" workflow
    echo 4. Click "Run workflow"
    echo 5. Wait for build to complete
    echo 6. Download APK from artifacts
    echo.
    echo 📱 App Features:
    echo ✅ Complete course information
    echo ✅ WhatsApp integration
    echo ✅ Phone calling
    echo ✅ Email integration
    echo ✅ LinkedIn integration
    echo ✅ Website integration
    echo ✅ Modern UI design
    echo.
    echo 📞 Contact Information:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo LinkedIn: linkedin.com/in/BharathReddyK
    echo Website: www.BharathTechAcademy.com
    echo.
    
    echo Opening GitHub repository...
    start https://github.com/bharathtechacademy/course-app
    
) else (
    echo.
    echo ========================================
    echo ❌ UPLOAD FAILED! ❌
    echo ========================================
    echo.
    echo This might be because:
    echo 1. Git is not installed
    echo 2. You're not authenticated with GitHub
    echo 3. Repository permissions issue
    echo.
    echo Manual upload option:
    echo 1. Go to https://github.com/bharathtechacademy/course-app
    echo 2. Click "uploading an existing file"
    echo 3. Drag and drop the android-course-app folder
    echo 4. Commit changes
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo.
)

echo.
echo Press any key to exit...
pause >nul
