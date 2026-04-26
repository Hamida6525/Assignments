import 'package:flutter/material.dart';

class AnswerOption extends StatelessWidget {
  final String answer;
  final bool isSelected;
  final VoidCallback onTap;
  final bool isMultiChoice;

  const AnswerOption({
    super.key,
    required this.answer,
    required this.isSelected,
    required this.onTap,
    this.isMultiChoice = false,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF9D8AFF) : Colors.white12,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: isSelected ? const Color(0xFF9D8AFF) : Colors.white24,
            width: 1.5,
          ),
        ),
        child: Row(
          children: [
            if (isMultiChoice)
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: isSelected ? const Color(0xFF6B4FA8) : Colors.white38,
                  ),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: isSelected
                    ? const Icon(
                        Icons.check,
                        size: 18,
                        color: Color(0xFF6B4FA8),
                      )
                    : null,
              )
            else
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isSelected ? const Color(0xFF6B4FA8) : Colors.white38,
                    width: 2,
                  ),
                ),
                child: isSelected
                    ? Center(
                        child: Container(
                          width: 12,
                          height: 12,
                          decoration: const BoxDecoration(
                            color: Color(0xFF6B4FA8),
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    : null,
              ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                answer,
                style: TextStyle(
                  color: isSelected ? const Color(0xFF2B0062) : Colors.white,
                  fontSize: 16,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
