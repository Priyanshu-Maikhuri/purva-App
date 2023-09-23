# purva [App(vid)](https://drive.google.com/file/d/12If7bzhuE1coe_OEupk3c2GYXfFQF4Ha/view?usp=sharing)

This repository contains the source code for a Flutter app. In this README, you will find step-by-step instructions on how to clone this repository, set up your development environment using Visual Studio Code (VS Code), and run the app on an Android emulator.

## Prerequisites

Before you begin, ensure you have the following prerequisites installed on your system:

1. **Flutter and Dart:** Make sure you have Flutter and Dart installed on your computer. You can download and install them by following the instructions in the official Flutter documentation: [Flutter Installation Guide](https://flutter.dev/docs/get-started/install)

2. **Visual Studio Code (VS Code):** If you don't have VS Code installed, you can download it from the official website: [VS Code](https://code.visualstudio.com/)

3. **Android Studio (Optional):** While not strictly necessary, having Android Studio installed can be beneficial for managing Android virtual devices. You can download Android Studio from the official website: [Android Studio](https://developer.android.com/studio)

4. **Git:** Ensure you have Git installed on your system. If not, download and install it from the official website: [Git](https://git-scm.com/)

5. **Android Emulator:** Set up an Android emulator using Android Studio or use a physical Android device for testing.

## Clone the Repository

1. Open your terminal or command prompt.

2. Navigate to the directory where you want to clone this repository using the `cd` command.

3. Run the following command to clone the repository:

   ```bash
   git clone https://github.com/your-username/flutter-app-repo.git
   ```

   Replace `your-username` with your GitHub username and `flutter-app-repo` with the actual repository name.

## Set Up Flutter Environment

1. Open Visual Studio Code (VS Code).

2. Open the cloned repository folder by selecting "File" > "Open Folder" and choosing the folder you cloned in the previous step.

3. VS Code will detect that you're working on a Flutter project and prompt you to install the Dart and Flutter extensions. Click "Install" to install these extensions.

4. Open the terminal in VS Code by selecting "View" > "Terminal."

5. Navigate to the project directory using the `cd` command:

   ```bash
   cd flutter-app-repo
   ```

6. Ensure you have the necessary Flutter dependencies by running:

   ```bash
   flutter pub get
   ```

## Run the App on an Android Emulator

1. Launch your Android emulator using Android Studio or connect a physical Android device to your computer.

2. Make sure the emulator is running and accessible.

3. Run the app by going to the "lib" > "main.dart" or in the VS Code terminal, run the following command to build and run the Flutter app on the Android emulator:

   ```bash
   flutter run
   ```

   This command will compile and deploy the app to the emulator. It may take a few moments for the app to launch.

4. Once the app is running, you should see it on the Android emulator screen.

## Congratulations! You've successfully set up and run the purva app locally on your development environment.

You can now start exploring the code, making modifications, and testing your changes. Remember to commit and push your changes back to the GitHub repository if you want to keep them or collaborate with others. Enjoy developing your Flutter app!
