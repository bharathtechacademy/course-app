@echo off
echo ========================================
echo Bharath Tech Academy - Complete Solution
echo ========================================
echo.

echo This script will handle everything for you!
echo.

REM Check Java
echo [1/6] Checking Java installation...
java -version >nul 2>&1
if %ERRORLEVEL% neq 0 (
    echo ❌ Java is not installed!
    echo.
    echo Please install Java JDK 11 or higher from:
    echo https://www.oracle.com/java/technologies/downloads/
    echo.
    echo After installation, restart this script.
    pause
    exit /b 1
) else (
    echo ✅ Java is installed
)

REM Check Android SDK
echo [2/6] Checking Android SDK...
if not defined ANDROID_HOME (
    echo ❌ ANDROID_HOME is not set!
    echo.
    echo Please install Android Studio from:
    echo https://developer.android.com/studio
    echo.
    echo After installation, set ANDROID_HOME environment variable.
    echo.
    echo Alternative: Use online build options (see COMPLETE_SOLUTION.md)
    echo.
    pause
    exit /b 1
) else (
    echo ✅ Android SDK found at: %ANDROID_HOME%
)

REM Clean previous builds
echo [3/6] Cleaning previous builds...
if exist "app\build" rmdir /s /q "app\build"
if exist "build" rmdir /s /q "build"

REM Build APK
echo [4/6] Building APK...
echo This may take a few minutes on first run...
echo.

call gradlew.bat assembleDebug

if %ERRORLEVEL% neq 0 (
    echo.
    echo ========================================
    echo ❌ BUILD FAILED! ❌
    echo ========================================
    echo.
    echo Please check the error messages above.
    echo.
    echo Alternative solutions:
    echo 1. Use online build options (see COMPLETE_SOLUTION.md)
    echo 2. Install Android Studio and try again
    echo 3. Use GitHub Actions for free online building
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo.
    pause
    exit /b 1
)

REM Check if APK was created
echo [5/6] Checking APK creation...
if not exist "app\build\outputs\apk\debug\app-debug.apk" (
    echo ❌ APK not found after build!
    echo.
    echo Please check the build output above for errors.
    echo.
    pause
    exit /b 1
) else (
    echo ✅ APK created successfully!
    echo 📱 Location: app\build\outputs\apk\debug\app-debug.apk
)

REM Try to install APK
echo [6/6] Attempting to install APK...
echo.

REM Check if ADB is available
if exist "%ANDROID_HOME%\platform-tools\adb.exe" (
    echo Checking for connected devices...
    adb devices
    
    echo.
    echo Make sure your Android device is:
    echo 1. Connected via USB
    echo 2. USB Debugging is enabled
    echo 3. Device is authorized
    echo.
    
    echo Press any key to continue with installation...
    pause >nul
    
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
        echo ⚠️  APK BUILT BUT INSTALLATION FAILED! ⚠️
        echo ========================================
        echo.
        echo Your APK is ready at: app\build\outputs\apk\debug\app-debug.apk
        echo.
        echo To install manually:
        echo 1. Transfer the APK to your Android device
        echo 2. Enable "Unknown Sources" in Settings
        echo 3. Tap the APK file to install
        echo.
        echo 📞 Need help? Contact:
        echo WhatsApp: +91-9553220022
        echo Email: BharathTechAcademy@gmail.com
        echo.
    )
    
) else (
    echo.
    echo ========================================
    echo 🎉 APK BUILT SUCCESSFULLY! 🎉
    echo ========================================
    echo.
    echo Your APK is ready at: app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo To install on your device:
    echo 1. Transfer the APK to your Android device
    echo 2. Enable "Unknown Sources" in Settings
    echo 3. Tap the APK file to install
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
    
    REM Open the output folder
    if exist "app\build\outputs\apk\debug\" (
        echo Opening APK folder...
        explorer "app\build\outputs\apk\debug\"
    )
)

echo.
echo Press any key to exit...
pause >nul
