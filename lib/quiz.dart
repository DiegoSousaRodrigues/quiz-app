import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/result_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];
  String activeScreen = 'start-screen';

  void switchScreen() {
    setState(() => activeScreen = 'question-screen');
  }

  void chooseAnswers(String value) {
    selectedAnswers.add(value);
    if (selectedAnswers.length == questions.length) {
      setState(() => activeScreen = 'results-screen');
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget;
    switch (activeScreen) {
      case 'start-screen':
        screenWidget = StartScreen(switchScreen);
        break;
      case 'results-screen':
        screenWidget = ResultScreen(chooseAnswers: selectedAnswers);
        break;
      default:
        screenWidget = QuestionScreen(onSelectAnswers: chooseAnswers);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 78, 13, 151),
                Color.fromARGB(255, 107, 15, 168),
              ],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
