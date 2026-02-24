import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(text: currentQuestions.answers[0], onTap: () {}),
          AnswerButton(text: currentQuestions.answers[1], onTap: () {}),
          AnswerButton(text: currentQuestions.answers[2], onTap: () {}),
          AnswerButton(text: currentQuestions.answers[3], onTap: () {}),
        ],
      ),
    );
  }
}
