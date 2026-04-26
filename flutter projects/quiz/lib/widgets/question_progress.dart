import 'package:flutter/material.dart';

class QuestionProgress extends StatelessWidget {
  final int currentQuestion;
  final int totalQuestions;

  const QuestionProgress({
    super.key,
    required this.currentQuestion,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\ of \ questions',
      style: const TextStyle(
        color: Colors.white54,
        fontSize: 14,
      ),
    );
  }
}
