import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/question_summary.dart';

class ResultScreen extends StatelessWidget {
  final List<String> chooseAnswers;
  final VoidCallback restartQuiz;

  const ResultScreen({super.key, required this.chooseAnswers, required this.restartQuiz});

  List<Map<String, Object>> getSummaryData() {
    List<Map<String, Object>> summary = [];

    for (var i = 0; i < chooseAnswers.length; i++) {
      summary.add(
        {
          'question_index': i,
          'question': questions[i].text,
          'correct_answer': questions[i].answers[0],
          'user_answer': chooseAnswers[i],
        },
      );
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final int numOfTotalQuestion = questions.length;
    final int numCorrectQuestion = summaryData.where((s) => s['correct_answer'] == s['user_answer']).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You answered $numCorrectQuestion out $numOfTotalQuestion question correctly!",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            QuestionSummary(summary: summaryData),
            SizedBox(height: 30),
            TextButton.icon(
              onPressed: restartQuiz,
              style: TextButton.styleFrom(
                iconColor: Colors.white,
                textStyle: TextStyle(color: Colors.white),
              ),
              label: Text(
                "Restart Quiz!",
                style: TextStyle(color: Colors.white),
              ),
              icon: Icon(Icons.replay_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
