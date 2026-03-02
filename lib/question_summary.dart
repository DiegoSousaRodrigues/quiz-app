import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuestionSummary({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summary
              .map(
                (s) => Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: s['correct_answer'] == s['user_answer'] ? Colors.green : Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(40),
                        ),
                      ),
                      child: Text(
                        ((s['question_index'] as int) + 1).toString(),
                        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 5),
                          Text(
                            s['question'] as String,
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700, fontSize: 14),
                          ),
                          Text(
                            s['user_answer'] as String,
                            style: TextStyle(color: Colors.deepPurple),
                          ),
                          Text(
                            s['correct_answer'] as String,
                            style: TextStyle(color: Colors.lightBlue),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
