@echo off
echo ========================================
echo Bharath Tech Academy Course App Setup
echo ========================================
echo.

echo Checking system requirements...
echo.

REM Check Java
echo [1/4] Checking Java installation...
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
echo [2/4] Checking Android SDK...
if not defined ANDROID_HOME (
    echo ❌ ANDROID_HOME is not set!
    echo.
    echo Please install Android Studio from:
    echo https://developer.android.com/studio
    echo.
    echo After installation:
    echo 1. Open Android Studio
    echo 2. Go to File → Settings → Appearance & Behavior → System Settings → Android SDK
    echo 3. Note the SDK Location path
    echo 4. Set ANDROID_HOME environment variable to that path
    echo.
    echo Example: set ANDROID_HOME=C:\Users\YourName\AppData\Local\Android\Sdk
    echo.
    pause
    exit /b 1
) else (
    echo ✅ Android SDK found at: %ANDROID_HOME%
)

REM Check ADB
echo [3/4] Checking ADB (Android Debug Bridge)...
if exist "%ANDROID_HOME%\platform-tools\adb.exe" (
    echo ✅ ADB is available
) else (
    echo ⚠️  ADB not found, but we can still build the APK
)

REM Build the APK
echo [4/4] Building APK...
echo.
echo Starting build process...
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
    echo 📋 Next Steps:
    echo 1. Transfer the APK to your Android device
    echo 2. Enable "Unknown Sources" in your device settings
    echo 3. Tap the APK file to install
    echo.
    echo 🔧 For USB installation:
    echo 1. Enable Developer Options on your device
    echo 2. Enable USB Debugging
    echo 3. Connect device via USB
    echo 4. Run: adb install app\build\outputs\apk\debug\app-debug.apk
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
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
    echo Common solutions:
    echo 1. Make sure you have stable internet connection
    echo 2. Update Android SDK in Android Studio
    echo 3. Try: gradlew clean
    echo 4. Check if all dependencies are downloaded
    echo.
    echo 📞 Need help? Contact:
    echo WhatsApp: +91-9553220022
    echo Email: BharathTechAcademy@gmail.com
    echo.
)

echo.
echo Press any key to exit...
pause >nul
