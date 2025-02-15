# Doctor Finder

A Flutter application for finding and connecting with doctors.

## Local Environment Setup

### 1. Install Flutter

1. Download Flutter SDK from the [official Flutter website](https://flutter.dev/docs/get-started/install)
   - For macOS: 
     ```bash
     # Using Homebrew
     brew install flutter
     ```
   - For Windows: Download the Flutter SDK zip file and extract it to a desired location
   - For Linux: Download the Flutter SDK tar file and extract it

2. Add Flutter to your path:
   - For macOS/Linux: Add the following to your `~/.zshrc` or `~/.bashrc`:
     ```bash
     export PATH="$PATH:[PATH_TO_FLUTTER_SDK]/flutter/bin"
     ```
   - For Windows: Add Flutter SDK location to your System Environment Variables

3. Run `flutter doctor` in terminal to verify the installation and check for any missing dependencies:
   ```bash
   flutter doctor
   ```

4. Install any missing dependencies that `flutter doctor` identifies

### 2. IDE Setup (VSCode)

1. Install Visual Studio Code from [here](https://code.visualstudio.com/)

2. Install required VSCode extensions:
   - Flutter extension
   - Dart extension
   - (Optional) Flutter Widget Snippets
   - (Optional) Awesome Flutter Snippets

3. Configure Flutter in VSCode:
   - Press `Cmd+Shift+P` (macOS) or `Ctrl+Shift+P` (Windows/Linux)
   - Type "Flutter: Run Flutter Doctor" to verify setup

### 3. Running the Project

1. Clone the repository:
   ```bash
   git clone [repository-url]
   cd doctor_finder
   ```

2. Get dependencies:
   ```bash
   flutter pub get
   ```

3. Run the app:
   - In VSCode:
     1. Open the project folder
     2. Press `F5` or go to Run > Start Debugging
     3. Select a device/emulator from the bottom status bar
   - From terminal:
     ```bash
     flutter run
     ```

### 4. Build and Deploy to Firebase Web Hosting

   ```bash
   # Build web version
   flutter build web
   
   # Deploy to Firebase
   firebase deploy
   ```

After successful deployment, Firebase will provide you with a hosting URL where your app is live.

## Troubleshooting

If you encounter any issues:

1. Run `flutter doctor` to identify any setup problems
2. Ensure all dependencies are up to date with `flutter pub get`
3. Clean the project with `flutter clean` and rebuild
4. Check if your IDE Flutter/Dart extensions are up to date

## Additional Resources

- [Flutter Documentation](https://flutter.dev/docs)
- [Dart Documentation](https://dart.dev/guides)
- [VSCode Flutter Setup Guide](https://flutter.dev/docs/development/tools/vs-code)
