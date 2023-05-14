# EmailQRify

EmailQRify is a Flutter application that allows users to validate email addresses, generate QR codes, and enhance social networking. This README file provides an overview of the application and its features.

## Screenshots

<img width="379" alt="Screen Shot 2023-05-14 at 2 07 03 PM" src="https://github.com/abhati27/EmailQRify/assets/60200047/b6e2ed16-7620-48cb-b125-ae21b732041d">
Introduction Screen

<img width="376" alt="Screen Shot 2023-05-14 at 2 07 20 PM" src="https://github.com/abhati27/EmailQRify/assets/60200047/5ec024b6-5da6-4b65-a8cf-03d27186c643">
Validation Screen

<img width="377" alt="Screen Shot 2023-05-14 at 2 07 55 PM" src="https://github.com/abhati27/EmailQRify/assets/60200047/9d94d174-3b9a-44c2-bdd3-b26128d78d03">
Vaidation Screen with valid email

<img width="380" alt="Screen Shot 2023-05-14 at 2 08 12 PM" src="https://github.com/abhati27/EmailQRify/assets/60200047/c2e5e059-f131-4b37-ad74-a598a8fa5d1e">
Generated QR Screen

## Features
* Introduction Screen: The application starts with an engaging tutorial screen that provides an introduction to EmailQRify's functionality and features.
* Email Validator: The main feature of the application is the email validator screen. It presents a visually appealing glass pane-like UI, where users can enter an email address. The interface includes a box below that displays whether the email is valid or not. The user can only click the QR code button if the email is valid.
* QR Code Generation: Once a valid email address is entered, users can generate a QR code by clicking the QR code button. The application generates a unique QR code based on the validated email address.
* Generated QR Code Screen: The final screen displays the generated QR code. When the QR code is scanned, it prompts the user's default email application with the email address pre-filled in the receiver box. This seamless integration simplifies communication and saves time for the users.
* Transitions and Gradients: Each screen in EmailQRify features a distinct transition effect and gradient background, providing a visually appealing and immersive user experience.

## Getting Started

To get started with EmailQRify, follow these steps:

1. Clone the repository to your local machine.
2. Set up the Flutter development environment by following the official Flutter documentation.
3. Open the project in your preferred IDE or text editor.
4. Install the required dependencies by running `flutter pub get` in the project directory.
5. Run the application using a simulator or connected device by executing `flutter run`.

## Packages

1. flutter/material.dart
2. glass_kit/glass_kit.dart
3. validators/validators.dart
4. qr.dart
5. page_transition/page_transition.dart






