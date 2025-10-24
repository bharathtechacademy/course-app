# 🌐 Online Build Options - No Local Installation Required

If you don't want to install Android Studio on your computer, here are several online alternatives:

## Option 1: GitHub Actions (Free & Recommended)

### Step 1: Create GitHub Repository
1. Go to https://github.com and create a new repository
2. Name it: `bharath-course-app`
3. Make it public (required for free GitHub Actions)

### Step 2: Upload Project
1. Download the entire `android-course-app` folder as ZIP
2. Upload all files to your GitHub repository
3. Commit and push the changes

### Step 3: Add Build Workflow
Create a file named `.github/workflows/build-apk.yml` in your repository:

```yaml
name: Build Android APK

on:
  push:
    branches: [ main ]
  workflow_dispatch:

jobs:
  build:
    runs-on: ubuntu-latest
    
    steps:
    - uses: actions/checkout@v3
    
    - name: Set up JDK 11
      uses: actions/setup-java@v3
      with:
        java-version: '11'
        distribution: 'temurin'
        
    - name: Setup Android SDK
      uses: android-actions/setup-android@v2
      
    - name: Grant execute permission for gradlew
      run: chmod +x gradlew
      
    - name: Build APK
      run: ./gradlew assembleDebug
      
    - name: Upload APK
      uses: actions/upload-artifact@v3
      with:
        name: app-debug
        path: app/build/outputs/apk/debug/app-debug.apk
```

### Step 4: Build and Download
1. Go to the "Actions" tab in your repository
2. Click "Build Android APK" workflow
3. Click "Run workflow" button
4. Wait for build to complete (5-10 minutes)
5. Download the APK from the artifacts section

## Option 2: Replit (Free Online IDE)

### Step 1: Create Replit Account
1. Go to https://replit.com
2. Sign up for a free account

### Step 2: Create New Project
1. Click "Create Repl"
2. Choose "Import from GitHub"
3. Enter your repository URL
4. Select "Java" as the language

### Step 3: Build APK
1. Open the terminal in Replit
2. Run: `./gradlew assembleDebug`
3. Download the APK from the file explorer

## Option 3: Gitpod (Free Online IDE)

### Step 1: Setup
1. Go to https://gitpod.io
2. Connect your GitHub account
3. Open your repository in Gitpod

### Step 2: Build
1. Open terminal in Gitpod
2. Run: `./gradlew assembleDebug`
3. Download the APK file

## Option 4: GitHub Codespaces (Free for Public Repos)

### Step 1: Enable Codespaces
1. Go to your GitHub repository
2. Click the "Code" button
3. Select "Codespaces" tab
4. Click "Create codespace"

### Step 2: Build APK
1. Open terminal in Codespaces
2. Run: `./gradlew assembleDebug`
3. Download the APK from the file explorer

## Option 5: Android Studio Online (Paid)

### Appetize.io
1. Go to https://appetize.io
2. Upload your project
3. Build and download APK (paid service)

### AWS Cloud9
1. Create AWS account
2. Launch Cloud9 environment
3. Upload project and build APK

## Quick Setup Script for GitHub Actions

If you choose GitHub Actions, here's a complete setup:

### 1. Create Repository
```bash
# Create new repository on GitHub
# Name: bharath-course-app
# Make it public
```

### 2. Upload Files
Upload all files from `android-course-app` folder to your repository.

### 3. Add Workflow File
Create `.github/workflows/build-apk.yml` with the content above.

### 4. Build APK
1. Go to Actions tab
2. Click "Build Android APK"
3. Click "Run workflow"
4. Wait for completion
5. Download APK from artifacts

## Installing the APK

Once you have the APK file:

### Method 1: Direct Installation
1. Transfer APK to your Android device
2. Enable "Unknown Sources" in Settings
3. Tap the APK file to install

### Method 2: USB Installation
1. Enable Developer Options on your device
2. Enable USB Debugging
3. Connect device via USB
4. Run: `adb install app-debug.apk`

## Troubleshooting Online Builds

### GitHub Actions Issues
- Make sure repository is public
- Check if workflow file is in `.github/workflows/` folder
- Ensure all files are uploaded correctly

### Replit Issues
- Make sure to select Java as the language
- Check if all dependencies are available
- Try running `./gradlew clean` first

### General Issues
- Ensure stable internet connection
- Check if all project files are uploaded
- Try different online services if one fails

## Benefits of Online Building

✅ **No Local Installation Required**
✅ **Free Options Available**
✅ **No System Requirements**
✅ **Works on Any Computer**
✅ **Automatic Updates**
✅ **Easy Sharing**

## Support

If you need help with any of these methods:

- **WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: [linkedin.com/in/BharathReddyK](https://www.linkedin.com/in/BharathReddyK)

Choose the method that works best for you! 🚀
