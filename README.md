# Bharath Tech Academy - Course App

A simple Android application that displays information about the Full Stack Software Testing course offered by Bharath Tech Academy.

## Features

- **Course Information Display**: Shows comprehensive details about the Full Stack Software Testing course
- **Interactive Contact Options**: Direct integration with WhatsApp, phone calls, email, LinkedIn, and website
- **Modern UI Design**: Netflix-inspired dark theme with gradient backgrounds and smooth animations
- **Responsive Layout**: Optimized for different screen sizes

## Course Details

### Course Information
- **Course**: Full Stack Software Testing (E2E Automation for SDET)
- **Duration**: 120+ hours (around 3.5 months)
- **Mode**: Online Training (through Zoom)
- **Timings**: 8:00 AM to 9:00 AM (Mon-Fri)

### Key Learning Areas
- Java Concepts and Advanced Java Libraries Integration
- Selenium Web Automation Testing Concepts
- TestNG and Cucumber BDD framework with Maven and Page Object Model
- Implementation of Gen AI models, LLM's & Copilots in Test Automation
- API Testing Using Postman and New-man Test Automation
- Rest-Assured API Automation Testing Concepts
- Performance testing using JMeter and Integration with Java framework
- Database Automation with PostgreSQL and JDBC Setup
- Source Code Management Using Git, Azure and GitHub Repository
- CI/CD Setup and DevOps Integration with Azure Pipelines

## Contact Information

- **Trainer**: Bharath Reddy
- **Phone/WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
- **LinkedIn**: [linkedin.com/in/BharathReddyK](https://www.linkedin.com/in/BharathReddyK)
- **Website**: [www.BharathTechAcademy.com](https://www.BharathTechAcademy.com)

## Technical Requirements

- **Minimum SDK**: Android 5.0 (API level 21)
- **Target SDK**: Android 14 (API level 34)
- **Language**: Java
- **Architecture**: Single Activity with ScrollView layout

## Installation

1. Clone or download the project
2. Open in Android Studio
3. Sync Gradle files
4. Build and run the application

## App Structure

```
app/
├── src/main/
│   ├── java/com/bharathtechacademy/courseapp/
│   │   └── MainActivity.java
│   ├── res/
│   │   ├── drawable/          # Custom backgrounds and icons
│   │   ├── layout/            # XML layouts
│   │   ├── values/            # Strings, colors, themes
│   │   └── xml/               # Backup and data extraction rules
│   └── AndroidManifest.xml
├── build.gradle
└── proguard-rules.pro
```

## Features Implementation

### Contact Integration
- **WhatsApp**: Opens WhatsApp with pre-filled message
- **Phone**: Initiates phone call to trainer
- **Email**: Opens email client with pre-filled subject and body
- **LinkedIn**: Opens LinkedIn profile in browser
- **Website**: Opens academy website in browser

### UI Components
- **Header Section**: Course title, trainer name, and inspirational quote
- **Attention Banner**: Call-to-action for focused learning
- **Course Details**: Comprehensive course information
- **Key Takeaways**: List of learning outcomes
- **Contact Section**: Interactive contact buttons

## Customization

The app uses a Netflix-inspired design with:
- Dark gradient backgrounds
- Red and gold color scheme
- Custom drawable resources
- Material Design components

## License

This project is created for educational purposes to showcase the Bharath Tech Academy course information.

## Support

For any questions about the course or app, contact:
- **WhatsApp**: +91-9553220022
- **Email**: BharathTechAcademy@gmail.com
