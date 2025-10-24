# 🚀 Quick Start Guide - Bharath Tech Academy Course App

## Option 1: Build APK Yourself (Recommended)

### Prerequisites Installation

#### Step 1: Install Java JDK
1. Download Java JDK 11 or higher from: https://www.oracle.com/java/technologies/downloads/
2. Install it and set `JAVA_HOME` environment variable
3. Add Java to your PATH

#### Step 2: Install Android Studio
1. Download Android Studio from: https://developer.android.com/studio
2. Install it with default settings
3. Open Android Studio and let it download the Android SDK
4. Set `ANDROID_HOME` environment variable to your SDK path

#### Step 3: Build the APK
1. Open Command Prompt in the `android-course-app` folder
2. Run: `build-apk.bat`
3. Find your APK at: `app\build\outputs\apk\debug\app-debug.apk`

## Option 2: Use Android Studio (Easiest)

1. **Install Android Studio** from: https://developer.android.com/studio
2. **Open the project:**
   - Launch Android Studio
   - Click "Open an existing Android Studio project"
   - Navigate to and select the `android-course-app` folder
3. **Wait for sync** to complete (first time may take 10-15 minutes)
4. **Build APK:**
   - Go to **Build** → **Build Bundle(s) / APK(s)** → **Build APK(s)**
   - Wait for build to complete
   - Click "locate" in the notification to find your APK

## Option 3: Online Build (No Installation Required)

If you don't want to install Android Studio, you can use online build services:

### GitHub Actions (Free)
1. Create a GitHub repository
2. Upload the `android-course-app` folder
3. Add a GitHub Actions workflow to build the APK
4. Download the APK from the Actions tab

### Alternative Online Services
- **Appetize.io**: Upload your project and get APK
- **GitHub Codespaces**: Use VS Code in browser to build
- **Replit**: Online IDE with Android support

## Installing the APK on Your Phone

### Method 1: Direct USB Installation
1. **Enable Developer Options:**
   - Go to Settings → About Phone
   - Tap "Build Number" 7 times
   - Go to Settings → Developer Options
   - Enable "USB Debugging"

2. **Connect and Install:**
   ```cmd
   adb install app-debug.apk
   ```

### Method 2: Manual Installation
1. **Transfer APK** to your phone (via USB, email, cloud)
2. **Enable Unknown Sources:**
   - Settings → Security → Unknown Sources (Android 7-)
   - Settings → Apps → Special Access → Install Unknown Apps (Android 8+)
3. **Install:** Tap the APK file and follow prompts

## Troubleshooting

### "ANDROID_HOME not set"
- Install Android Studio first
- Set environment variable: `ANDROID_HOME=C:\Users\YourName\AppData\Local\Android\Sdk`

### "Java not found"
- Install Java JDK 11+
- Set `JAVA_HOME` environment variable

### "Build failed"
- Check internet connection
- Update Android SDK in Android Studio
- Try: `gradlew clean` then `gradlew assembleDebug`

### "App won't install"
- Enable Unknown Sources
- Check device storage space
- Uninstall previous version if exists

## App Features

✅ **Course Information Display**
✅ **WhatsApp Integration** - Direct messaging
✅ **Phone Integration** - One-tap calling
✅ **Email Integration** - Pre-filled email
✅ **LinkedIn Integration** - Profile access
✅ **Website Integration** - Academy website
✅ **Modern UI** - Netflix-inspired design
✅ **Responsive Layout** - All screen sizes

## Contact Information in App

- **Trainer**: Bharath Reddy
- **Phone/WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: linkedin.com/in/BharathReddyK
- **Website**: www.BharathTechAcademy.com

## File Locations

- **APK Output**: `app/build/outputs/apk/debug/app-debug.apk`
- **Build Scripts**: `build-apk.bat` (Windows) / `build-apk.sh` (Linux/Mac)
- **Project Files**: All source code in `app/src/main/`

## Need Help?

If you encounter any issues:
- **WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: [linkedin.com/in/BharathReddyK](https://www.linkedin.com/in/BharathReddyK)

The app is ready to use once installed! 🎉
