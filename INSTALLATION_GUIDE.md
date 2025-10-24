# 📱 Bharath Tech Academy Course App - Installation Guide

## Prerequisites

Before building the APK, you need to install the following:

### 1. Java Development Kit (JDK)
- Download and install **Java JDK 8 or higher**
- Download from: https://www.oracle.com/java/technologies/downloads/
- Set `JAVA_HOME` environment variable to your JDK installation path

### 2. Android Studio & SDK
- Download and install **Android Studio** from: https://developer.android.com/studio
- During installation, make sure to install:
  - Android SDK
  - Android SDK Platform-Tools
  - Android SDK Build-Tools
- Set `ANDROID_HOME` environment variable to your Android SDK path (usually `C:\Users\YourName\AppData\Local\Android\Sdk`)

### 3. Environment Variables Setup

#### Windows:
```cmd
set ANDROID_HOME=C:\Users\YourName\AppData\Local\Android\Sdk
set JAVA_HOME=C:\Program Files\Java\jdk-11.0.x
set PATH=%PATH%;%ANDROID_HOME%\platform-tools;%ANDROID_HOME%\tools
```

#### Linux/Mac:
```bash
export ANDROID_HOME=$HOME/Android/Sdk
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools
```

## Building the APK

### Method 1: Using Build Scripts (Recommended)

#### For Windows:
1. Open Command Prompt in the `android-course-app` directory
2. Run: `build-apk.bat`
3. Wait for the build to complete
4. Find your APK at: `app\build\outputs\apk\debug\app-debug.apk`

#### For Linux/Mac:
1. Open Terminal in the `android-course-app` directory
2. Run: `./build-apk.sh`
3. Wait for the build to complete
4. Find your APK at: `app/build/outputs/apk/debug/app-debug.apk`

### Method 2: Using Android Studio

1. Open Android Studio
2. Click "Open an existing Android Studio project"
3. Navigate to and select the `android-course-app` folder
4. Wait for Gradle sync to complete
5. Go to **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
6. Wait for the build to complete
7. Click "locate" in the notification to find your APK

### Method 3: Using Command Line

#### Windows:
```cmd
cd android-course-app
gradlew.bat assembleDebug
```

#### Linux/Mac:
```bash
cd android-course-app
./gradlew assembleDebug
```

## Installing the APK on Your Device

### Method 1: Direct Installation via ADB (Recommended)

1. **Enable Developer Options on your Android device:**
   - Go to **Settings** → **About Phone**
   - Tap **Build Number** 7 times
   - Go back to **Settings** → **Developer Options**
   - Enable **USB Debugging**

2. **Connect your device via USB**

3. **Install the APK:**
   ```cmd
   adb install app\build\outputs\apk\debug\app-debug.apk
   ```

### Method 2: Manual Installation

1. **Transfer the APK file** to your Android device (via USB, email, cloud storage, etc.)

2. **Enable Unknown Sources:**
   - Go to **Settings** → **Security** → **Unknown Sources** (Android 7 and below)
   - Or **Settings** → **Apps & Notifications** → **Special App Access** → **Install Unknown Apps** (Android 8+)

3. **Install the APK:**
   - Open a file manager on your device
   - Navigate to the APK file
   - Tap the APK file and follow the installation prompts

## Troubleshooting

### Common Issues:

#### 1. "ANDROID_HOME is not set"
- Make sure you've installed Android Studio and SDK
- Set the `ANDROID_HOME` environment variable correctly
- Restart your command prompt/terminal after setting environment variables

#### 2. "Java is not installed"
- Install Java JDK 8 or higher
- Set the `JAVA_HOME` environment variable
- Make sure `java` command is available in your PATH

#### 3. "Gradle build failed"
- Make sure you have a stable internet connection
- Check if your Android SDK is up to date
- Try cleaning the project: `gradlew clean` then `gradlew assembleDebug`

#### 4. "App not installing on device"
- Make sure "Unknown Sources" is enabled
- Check if your device has enough storage space
- Try uninstalling any previous version of the app first

#### 5. "Permission denied" (Linux/Mac)
- Make sure the build script is executable: `chmod +x build-apk.sh`
- Make sure gradlew is executable: `chmod +x gradlew`

## App Features

Once installed, the app will provide:

- **Course Information**: Complete details about the Full Stack Software Testing course
- **Interactive Contact**: Direct WhatsApp, phone, email, LinkedIn, and website integration
- **Modern UI**: Netflix-inspired dark theme with smooth animations
- **Mobile Optimized**: Responsive design for all screen sizes

## Support

If you encounter any issues:

- **WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: [linkedin.com/in/BharathReddyK](https://www.linkedin.com/in/BharathReddyK)

## File Structure

```
android-course-app/
├── app/
│   ├── src/main/
│   │   ├── java/com/bharathtechacademy/courseapp/
│   │   │   └── MainActivity.java
│   │   ├── res/
│   │   │   ├── drawable/     # Icons and backgrounds
│   │   │   ├── layout/       # UI layouts
│   │   │   ├── values/       # Strings, colors, themes
│   │   │   └── xml/          # Configuration files
│   │   └── AndroidManifest.xml
│   └── build.gradle
├── build-apk.bat            # Windows build script
├── build-apk.sh             # Linux/Mac build script
├── gradlew                  # Gradle wrapper (Unix)
├── gradlew.bat              # Gradle wrapper (Windows)
└── README.md
```

The APK will be generated in: `app/build/outputs/apk/debug/app-debug.apk`
