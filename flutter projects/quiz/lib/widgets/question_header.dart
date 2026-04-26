import 'package:flutter/material.dart';
import 'package:quiz/ringprograsspainter.dart';

class QuestionHeader extends StatelessWidget {
  final int questionNumber;
  final int totalQuestions;

  const QuestionHeader({
    super.key,
    required this.questionNumber,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: const Color(0xFF5A4B76),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 28,
            height: 28,
            child: CustomPaint(painter: DottedCirclePainter()),
          ),
          const SizedBox(width: 10),
          Text(
            'Question ',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
