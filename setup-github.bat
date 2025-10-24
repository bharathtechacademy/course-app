@echo off
echo ========================================
echo GitHub Setup for Bharath Course App
echo ========================================
echo.

echo This script will help you set up GitHub repository for online building.
echo.

echo Step 1: Create GitHub Account
echo -----------------------------
echo 1. Go to: https://github.com
echo 2. Click "Sign up" and create a free account
echo 3. Verify your email address
echo.
echo Press any key after creating your account...
pause >nul

echo.
echo Step 2: Create Repository
echo ------------------------
echo 1. Click the "+" icon in top right corner
echo 2. Select "New repository"
echo 3. Repository name: bharath-course-app
echo 4. Make it PUBLIC (required for free GitHub Actions)
echo 5. Click "Create repository"
echo.
echo Press any key after creating the repository...
pause >nul

echo.
echo Step 3: Upload Project Files
echo ---------------------------
echo 1. Click "uploading an existing file"
echo 2. Drag and drop the entire android-course-app folder
echo 3. Commit message: "Add Bharath Tech Academy Course App"
echo 4. Click "Commit changes"
echo.
echo Press any key after uploading files...
pause >nul

echo.
echo Step 4: Add Build Workflow
echo --------------------------
echo 1. Click "Create new file"
echo 2. Name: .github/workflows/build-apk.yml
echo 3. Copy the content from the file that will open
echo 4. Click "Commit new file"
echo.

REM Create the workflow file
echo Creating workflow file...
mkdir .github\workflows 2>nul

echo name: Build Android APK > .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo on: >> .github\workflows\build-apk.yml
echo   push: >> .github\workflows\build-apk.yml
echo     branches: [ main ] >> .github\workflows\build-apk.yml
echo   workflow_dispatch: >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo jobs: >> .github\workflows\build-apk.yml
echo   build: >> .github\workflows\build-apk.yml
echo     runs-on: ubuntu-latest >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     steps: >> .github\workflows\build-apk.yml
echo     - uses: actions/checkout@v3 >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     - name: Set up JDK 11 >> .github\workflows\build-apk.yml
echo       uses: actions/setup-java@v3 >> .github\workflows\build-apk.yml
echo       with: >> .github\workflows\build-apk.yml
echo         java-version: '11' >> .github\workflows\build-apk.yml
echo         distribution: 'temurin' >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     - name: Setup Android SDK >> .github\workflows\build-apk.yml
echo       uses: android-actions/setup-android@v2 >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     - name: Grant execute permission for gradlew >> .github\workflows\build-apk.yml
echo       run: chmod +x gradlew >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     - name: Build APK >> .github\workflows\build-apk.yml
echo       run: ./gradlew assembleDebug >> .github\workflows\build-apk.yml
echo. >> .github\workflows\build-apk.yml
echo     - name: Upload APK >> .github\workflows\build-apk.yml
echo       uses: actions/upload-artifact@v3 >> .github\workflows\build-apk.yml
echo       with: >> .github\workflows\build-apk.yml
echo         name: app-debug >> .github\workflows\build-apk.yml
echo         path: app/build/outputs/apk/debug/app-debug.apk >> .github\workflows\build-apk.yml

echo ✅ Workflow file created: .github\workflows\build-apk.yml
echo.
echo Now upload this file to your GitHub repository:
echo 1. Go to your repository on GitHub
echo 2. Click "Create new file"
echo 3. Name: .github/workflows/build-apk.yml
echo 4. Copy the content from the file that just opened
echo 5. Click "Commit new file"
echo.
echo Press any key after uploading the workflow file...
pause >nul

echo.
echo Step 5: Build APK
echo ----------------
echo 1. Go to "Actions" tab in your repository
echo 2. Click "Build Android APK" workflow
echo 3. Click "Run workflow" button
echo 4. Wait 5-10 minutes for build to complete
echo 5. Click on the completed workflow
echo 6. Download the APK from "Artifacts" section
echo.

echo ========================================
echo 🎉 Setup Complete! 🎉
echo ========================================
echo.
echo Your APK will be built automatically in the cloud!
echo No local installation required.
echo.
echo 📱 To install on your device:
echo 1. Download the APK from GitHub Actions
echo 2. Transfer to your Android device
echo 3. Enable "Unknown Sources" in Settings
echo 4. Tap the APK file to install
echo.
echo 📞 Need help? Contact:
echo WhatsApp: +91-9553220022
echo Email: BharathTechAcademy@gmail.com
echo.

echo Opening workflow file for you to copy...
notepad .github\workflows\build-apk.yml

echo.
echo Press any key to exit...
pause >nul
