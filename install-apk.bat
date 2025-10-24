@echo off
echo ========================================
echo Bharath Tech Academy - APK Installer
echo ========================================
echo.

echo This script will help you install the APK on your Android device.
echo.

REM Check if ADB is available
if not exist "%ANDROID_HOME%\platform-tools\adb.exe" (
    echo ❌ ADB not found! Please install Android SDK first.
    echo.
    echo Alternative: Install APK manually on your device
    echo 1. Transfer the APK file to your device
    echo 2. Enable "Unknown Sources" in Settings
    echo 3. Tap the APK file to install
    echo.
    pause
    exit /b 1
)

echo ✅ ADB found at: %ANDROID_HOME%\platform-tools\adb.exe
echo.

REM Check if device is connected
echo Checking for connected devices...
adb devices

echo.
echo Make sure your Android device is:
echo 1. Connected via USB
echo 2. USB Debugging is enabled
echo 3. Device is authorized
echo.

echo Press any key to continue...
pause >nul

REM Check if APK exists
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo ❌ APK not found!
    echo.
    echo Please build the APK first:
    echo 1. Run setup-and-build.bat
    echo 2. Or use Android Studio
    echo 3. Or use online build options
    echo.
    pause
    exit /b 1
)

echo ✅ APK found: app\build\outputs\apk\debug\app-debug.apk
echo.

REM Install APK
echo Installing APK on your device...
adb install -r "app\build\outputs\apk\debug\app-debug.apk"

if %ERRORLEVEL% equ 0 (
    echo.
    echo ========================================
    echo 🎉 APK INSTALLED SUCCESSFULLY! 🎉
    echo ========================================
    echo.
    echo Your Bharath Tech Academy Course App is now installed!
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
    
) else (
    echo.
    echo ========================================
    echo ❌ INSTALLATION FAILED! ❌
    echo ========================================
    echo.
    echo Common solutions:
    echo 1. Make sure device is connected and authorized
    echo 2. Enable USB Debugging in Developer Options
    echo 3. Try installing manually:
    echo    - Transfer APK to device
    echo    - Enable Unknown Sources
    echo    - Tap APK file to install
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo.
)

echo.
echo Press any key to exit...
pause >nul
