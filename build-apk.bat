@echo off
echo Building Android APK for Bharath Tech Academy Course App...
echo.

REM Check if Android SDK is available
if not defined ANDROID_HOME (
    echo ERROR: ANDROID_HOME is not set!
    echo Please install Android SDK and set ANDROID_HOME environment variable.
    echo Download Android Studio from: https://developer.android.com/studio
    pause
    exit /b 1
)

REM Check if Java is available
java -version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ERROR: Java is not installed or not in PATH!
    echo Please install Java JDK 8 or higher.
    pause
    exit /b 1
)

echo Android SDK found at: %ANDROID_HOME%
echo.

REM Clean previous builds
echo Cleaning previous builds...
if exist "app\build" rmdir /s /q "app\build"
if exist "build" rmdir /s /q "build"

REM Build the APK
echo Building APK...
call gradlew.bat assembleDebug

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo BUILD SUCCESSFUL!
    echo ========================================
    echo.
    echo APK Location: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo To install on your device:
    echo 1. Enable "Developer Options" on your Android device
    echo 2. Enable "USB Debugging" in Developer Options
    echo 3. Connect your device via USB
    echo 4. Run: adb install app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo Or transfer the APK file to your device and install it manually.
    echo.
) else (
    echo.
    echo ========================================
    echo BUILD FAILED!
    echo ========================================
    echo.
    echo Please check the error messages above.
    echo Make sure you have:
    echo - Android SDK installed
    echo - Java JDK 8+ installed
    echo - Proper environment variables set
    echo.
)

pause
