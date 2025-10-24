# ⚡ Instant Solution - Get Your APK in 15 Minutes

Since Android SDK is not installed on your system, here's the **fastest way** to get your APK:

## 🚀 Method 1: GitHub Actions (Recommended - 15 minutes)

### Step 1: Create GitHub Account (2 minutes)
1. Go to https://github.com
2. Click "Sign up" and create a free account
3. Verify your email

### Step 2: Create Repository (3 minutes)
1. Click the "+" icon → "New repository"
2. Repository name: `bharath-course-app`
3. Make it **Public** (required for free GitHub Actions)
4. Click "Create repository"

### Step 3: Upload Project (5 minutes)
1. Click "uploading an existing file"
2. Drag and drop the entire `android-course-app` folder
3. Commit message: "Add Bharath Tech Academy Course App"
4. Click "Commit changes"

### Step 4: Add Build Workflow (3 minutes)
1. Click "Create new file"
2. Name: `.github/workflows/build-apk.yml`
3. Copy and paste this content:

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

4. Click "Commit new file"

### Step 5: Build APK (2 minutes)
1. Go to "Actions" tab in your repository
2. Click "Build Android APK" workflow
3. Click "Run workflow" button
4. Wait 5-10 minutes for build to complete
5. Click on the completed workflow
6. Download the APK from "Artifacts" section

## 🎯 Method 2: Replit Online IDE (10 minutes)

### Step 1: Create Replit Account
1. Go to https://replit.com
2. Sign up for free account

### Step 2: Create New Project
1. Click "Create Repl"
2. Choose "Import from GitHub"
3. Enter your repository URL (if you created one above)
4. Or upload the project files directly

### Step 3: Build APK
1. Open terminal in Replit
2. Run: `./gradlew assembleDebug`
3. Download APK from file explorer

## 📱 Installing the APK on Your Phone

Once you have the APK file:

### Method 1: Direct Installation
1. **Transfer APK** to your Android device (via USB, email, cloud storage)
2. **Enable Unknown Sources:**
   - Go to Settings → Security → Unknown Sources (Android 7 and below)
   - Or Settings → Apps → Special Access → Install Unknown Apps (Android 8+)
3. **Install:** Tap the APK file and follow the installation prompts

### Method 2: USB Installation (if you have ADB)
1. **Enable Developer Options:**
   - Go to Settings → About Phone
   - Tap "Build Number" 7 times
   - Go to Settings → Developer Options
   - Enable "USB Debugging"
2. **Connect device via USB**
3. **Install APK:**
   ```cmd
   adb install app-debug.apk
   ```

## 🎉 What You'll Get

Your APK will include:

✅ **Complete Course Information**
- Full Stack Software Testing course details
- 120+ hours of content
- Online training through Zoom
- 8:00 AM to 9:00 AM (Mon-Fri) schedule

✅ **Interactive Contact Options**
- **WhatsApp Button** → Direct messaging to +91-9553220022
- **Call Button** → One-tap calling
- **Email Button** → Pre-filled email to BharathTechAcademy@gmail.com
- **LinkedIn Button** → Direct link to your profile
- **Website Button** → Link to BharathTechAcademy.com

✅ **Modern UI Design**
- Netflix-inspired dark theme
- Smooth animations
- Responsive layout for all screen sizes
- Professional gradient backgrounds

## 🔧 Troubleshooting

### GitHub Actions Issues
- Make sure repository is **public**
- Check if workflow file is in `.github/workflows/` folder
- Ensure all files are uploaded correctly

### Replit Issues
- Make sure to select **Java** as the language
- Check if all dependencies are available
- Try running `./gradlew clean` first

### APK Installation Issues
- Enable "Unknown Sources" in device settings
- Check if device has enough storage space
- Try uninstalling any previous version first

## 📞 Need Help?

If you encounter any issues:

- **WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: [linkedin.com/in/BharathReddyK](https://www.linkedin.com/in/BharathReddyK)

## 🎯 Recommended Approach

**For fastest results:** Use GitHub Actions (Method 1)
- No local installation required
- Free and reliable
- Takes 15 minutes total
- Professional build environment

**Alternative:** Use Replit (Method 2)
- Also free and online
- Takes 10 minutes
- Good for quick testing

Choose the method that works best for you! 🚀
