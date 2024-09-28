# Code Saver Flutter App

The **Code Saver** is a Flutter application that allows users to save, retrieve, update, and delete code snippets in various programming languages. The app connects to Firebase as the backend to store the code snippets, and implements full CRUD (Create, Read, Update, Delete) operations. This app is designed to help developers manage and organize their code snippets easily.

## Features

- **Add Code Snippets**: Save code snippets in any programming language with a title, description, and tags.
- **View Saved Code**: Retrieve and view code snippets from Firebase.
- **Update Snippets**: Edit your saved code snippets.
- **Delete Snippets**: Remove unwanted snippets from your collection.
- **Firebase Integration**: Fully integrated with Firebase Firestore for data storage.
- **Language-Agnostic**: Store code snippets from any programming language (C, Java, Python, HTML, CSS, JavaScript, etc.).
- **User Authentication**: Secure access to the app using Firebase Authentication (Optional).

## Requirements


- Flutter SDK
- Android Studio or Visual Studio Code (for development)
- Firebase account
- Firebase Firestore and Authentication services enabled

## Setup Instructions

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/code-saver-flutter-app.git
   cd code-saver-flutter-app

Install dependencies: Make sure you have Flutter installed, and then run:

bash
Copy code
flutter pub get
Set up Firebase:

Create a Firebase project in the Firebase console.
Enable Firestore and Firebase Authentication (if needed).
Follow the Firebase setup instructions to add your app's Firebase configuration.
Add Firebase config to Flutter: Download your google-services.json (for Android) or GoogleService-Info.plist (for iOS) and add it to the respective directories in your Flutter project:

Android: android/app/google-services.json
iOS: ios/Runner/GoogleService-Info.plist
Run the app: Once everything is set up, you can run the app on an emulator or a real device:

bash
Copy code
flutter run
Usage
Create a New Code Snippet:

Tap the "Add New Snippet" button.
Enter the title, language, description, and the code snippet.
Save the snippet to the Firebase database.
View Saved Snippets:

View all the saved code snippets in a list.
Each snippet can be viewed in detail, where you can see the title, language, description, and the full code.
Edit a Code Snippet:

Select a snippet from the list.
Tap the "Edit" button, modify the code or details, and save the changes.
Delete a Snippet:

Select a snippet from the list.
Tap the "Delete" button to permanently remove the snippet from Firebase.
Firebase Setup
To integrate Firebase with your Flutter app:

Create a Firebase Project:

Go to Firebase Console.
Create a new project and follow the setup steps for Firebase Firestore and Authentication.
Configure Firestore:

In the Firebase Console, enable Firestore under the "Database" section.
Set up security rules based on your app's needs (optional).
Configure Firebase Authentication (Optional):

Go to the Authentication section in Firebase Console and enable the desired authentication methods (e.g., email/password, Google sign-in).
Set Up Firebase in Flutter:

Use the firebase_core and cloud_firestore packages to connect your app to Firebase. Don't forget to configure it in both Android and iOS platforms.
