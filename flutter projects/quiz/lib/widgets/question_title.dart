import 'package:flutter/material.dart';

class QuestionTitle extends StatelessWidget {
  final String question;

  const QuestionTitle({
    super.key,
    required this.question,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      question,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 26,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
