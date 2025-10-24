#!/bin/bash

echo "Building Android APK for Bharath Tech Academy Course App..."
echo

# Check if Android SDK is available
if [ -z "$ANDROID_HOME" ]; then
    echo "ERROR: ANDROID_HOME is not set!"
    echo "Please install Android SDK and set ANDROID_HOME environment variable."
    echo "Download Android Studio from: https://developer.android.com/studio"
    exit 1
fi

# Check if Java is available
if ! command -v java &> /dev/null; then
    echo "ERROR: Java is not installed or not in PATH!"
    echo "Please install Java JDK 8 or higher."
    exit 1
fi

echo "Android SDK found at: $ANDROID_HOME"
echo

# Clean previous builds
echo "Cleaning previous builds..."
rm -rf app/build
rm -rf build

# Make gradlew executable
chmod +x gradlew

# Build the APK
echo "Building APK..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    echo
    echo "========================================"
    echo "BUILD SUCCESSFUL!"
    echo "========================================"
    echo
    echo "APK Location: app/build/outputs/apk/debug/app-debug.apk"
    echo
    echo "To install on your device:"
    echo "1. Enable 'Developer Options' on your Android device"
    echo "2. Enable 'USB Debugging' in Developer Options"
    echo "3. Connect your device via USB"
    echo "4. Run: adb install app/build/outputs/apk/debug/app-debug.apk"
    echo
    echo "Or transfer the APK file to your device and install it manually."
    echo
else
    echo
    echo "========================================"
    echo "BUILD FAILED!"
    echo "========================================"
    echo
    echo "Please check the error messages above."
    echo "Make sure you have:"
    echo "- Android SDK installed"
    echo "- Java JDK 8+ installed"
    echo "- Proper environment variables set"
    echo
    exit 1
fi
