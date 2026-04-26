import 'package:flutter/material.dart';
import 'answer_option.dart';

class AnswerList extends StatelessWidget {
  final List<String> answers;
  final List<int> selectedIndices;
  final Function(int) onAnswerSelected;
  final bool isMultiChoice;

  const AnswerList({
    super.key,
    required this.answers,
    required this.selectedIndices,
    required this.onAnswerSelected,
    required this.isMultiChoice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        answers.length,
        (index) {
          final isSelected = selectedIndices.contains(index);
          return Column(
            children: [
              AnswerOption(
                answer: answers[index],
                isSelected: isSelected,
                isMultiChoice: isMultiChoice,
                onTap: () {
                  onAnswerSelected(index);
                },
              ),
              if (index < answers.length - 1) const SizedBox(height: 12),
            ],
          );
        },
      ),
    );
  }
}
