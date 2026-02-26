import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuestionSummary({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: summary
          .map(
            (s) => Row(
              children: [
                Text(((s['question_index'] as int) + 1).toString()),
                Column(
                  children: [
                    Text(s['question'] as String),
                    SizedBox(height: 5),
                    Text(s['user_answer'] as String),
                    Text(s['correct_answer'] as String),
                  ],
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}
