@echo off
echo ========================================
echo Bharath Tech Academy - Quick Setup
echo ========================================
echo.

echo This script will help you set up the environment and build the APK.
echo.

REM Check if Android Studio is installed in common locations
echo Checking for Android Studio installation...

set ANDROID_HOME_FOUND=0

REM Check common Android SDK locations
if exist "%LOCALAPPDATA%\Android\Sdk" (
    set ANDROID_HOME=%LOCALAPPDATA%\Android\Sdk
    set ANDROID_HOME_FOUND=1
    echo ✅ Found Android SDK at: %ANDROID_HOME%
)

if exist "%USERPROFILE%\AppData\Local\Android\Sdk" (
    set ANDROID_HOME=%USERPROFILE%\AppData\Local\Android\Sdk
    set ANDROID_HOME_FOUND=1
    echo ✅ Found Android SDK at: %ANDROID_HOME%
)

if exist "C:\Android\Sdk" (
    set ANDROID_HOME=C:\Android\Sdk
    set ANDROID_HOME_FOUND=1
    echo ✅ Found Android SDK at: %ANDROID_HOME%
)

if %ANDROID_HOME_FOUND%==0 (
    echo ❌ Android SDK not found in common locations.
    echo.
    echo Please install Android Studio from:
    echo https://developer.android.com/studio
    echo.
    echo After installation, run this script again.
    echo.
    echo Alternative: Use online build options (see SOLUTION_OPTIONS.md)
    pause
    exit /b 1
)

echo.
echo Setting up environment variables...
set PATH=%PATH%;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools

echo.
echo Attempting to build APK...
echo This may take a few minutes on first run...
echo.

call gradlew.bat assembleDebug

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo 🎉 BUILD SUCCESSFUL! 🎉
    echo ========================================
    echo.
    echo Your APK is ready at:
    echo 📱 app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 📋 To install on your device:
    echo 1. Transfer the APK to your Android device
    echo 2. Enable "Unknown Sources" in Settings
    echo 3. Tap the APK file to install
    echo.
    
    REM Open the output folder
    if exist "app\build\outputs\apk\debug\" (
        echo Opening APK folder...
        explorer "app\build\outputs\apk\debug\"
    )
    
) else (
    echo.
    echo ========================================
    echo ❌ BUILD FAILED! ❌
    echo ========================================
    echo.
    echo This usually means Android SDK is not properly installed.
    echo.
    echo 🔧 Solutions:
    echo 1. Install Android Studio from: https://developer.android.com/studio
    echo 2. Use online build options (see SOLUTION_OPTIONS.md)
    echo 3. Use GitHub Actions for free online building
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo.
)

echo.
echo Press any key to exit...
pause >nul
