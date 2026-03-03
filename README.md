# 🎯 Flutter Quiz App

<p align="center">
  <img src="assets/images/quiz-logo.png" width="150" alt="Quiz App Logo">
</p>

A beautifully designed, interactive Quiz Application built with Flutter. This project demonstrates core Flutter concepts including state management, conditional rendering, custom Google Fonts, and widget modularity.

## ✨ Features

- **Dynamic State Management:** Seamless screen transitions handled efficiently via `StatefulWidget` without using complex routing.
- **Custom UI/UX:** Clean, gradient-based user interface with a modern and engaging aesthetic.
- **Typography:** Integrated with `google_fonts` for polished text rendering (Lato font).
- **Clean Architecture:** Separation of concerns with distinct models, data layers, and reusable UI components.
- **Result Analysis:** Tracks user answers, compares them to the correct ones, and provides a comprehensive visual summary at the end.

## 📁 Project Structure

```text
lib/
├── data/
│   └── questions.dart         # Mock data containing quiz questions and answers
├── models/
│   └── quiz_question.dart     # Data model for the quiz questions
├── answer_button.dart         # Reusable styling for answer buttons
├── question_screen.dart       # Screen displaying the current question and options
├── question_summary.dart      # Summary list widget for the results screen
├── quiz.dart                  # Main stateful widget managing app state and transitions
├── result_screen.dart         # Final screen displaying the score and summary details
└── start_screen.dart          # Entry screen of the quiz application
```

## 🚀 Getting Started

### Prerequisites

Ensure you have the following installed on your local machine:
- [Flutter SDK](https://flutter.dev/docs/get-started/install) (^3.10.3 or higher)
- Dart SDK
- A supported IDE (VS Code, Android Studio, or IntelliJ IDEA)

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/DiegoSousaRodrigues/quiz-app.git
   ```
2. Navigate to the project directory:
   ```bash
   cd quiz-app
   ```
3. Install the dependencies:
   ```bash
   flutter pub get
   ```
4. Run the application:
   ```bash
   flutter run
   ```

## 📦 Dependencies

- `flutter` (SDK)
- `cupertino_icons` (^1.0.8)
- `google_fonts` (^8.0.2)

## 🛠 Roadmap & Next Steps

As an evolving project, the following architectural and feature improvements are planned:
- [ ] **State Management Upgrade:** Migrate to a robust state management solution (e.g., Riverpod, BLoC, or Provider).
- [ ] **API Integration:** Fetch questions dynamically from an external REST API instead of using hardcoded mock data.
- [ ] **Local Storage:** Implement local storage (SharedPreferences or Hive) to keep track of high scores and user history.
- [ ] **Animations:** Add implicit animations for smoother widget transitions and button presses.
- [ ] **Internationalization (i18n):** Support multiple languages for a broader audience.

---
*Built with ❤️ using [Flutter](https://flutter.dev/).*
