import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'The Question...',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 30),
          AnswerButton(text: "Answers: 1", onTap: () {}),
          AnswerButton(text: "Answers: 2", onTap: () {}),
          AnswerButton(text: "Answers: 3", onTap: () {}),
          AnswerButton(text: "Answers: 4", onTap: () {}),
        ],
      ),
    );
  }
}
