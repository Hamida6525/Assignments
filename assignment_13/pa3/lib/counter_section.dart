import 'package:flutter/material.dart';
import 'constants.dart';

class CounterCard extends StatelessWidget {
  final String label;
  final int value;
  final VoidCallback onDecrement;
  final VoidCallback onIncrement;

  CounterCard({
    required this.label,
    required this.value,
    required this.onDecrement,
    required this.onIncrement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: kCardColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(label, style: TextStyle(color: kLabelColor)),
            Text(
              value.toString(),
              style: TextStyle(
                color: kWhite,
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Minus button
                GestureDetector(
                  onTap: onDecrement,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    child: Icon(Icons.remove, color: kWhite),
                  ),
                ),
                SizedBox(width: 12),
                // Plus button
                GestureDetector(
                  onTap: onIncrement,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[700],
                    child: Icon(Icons.add, color: kWhite),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
