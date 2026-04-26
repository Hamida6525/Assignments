import 'package:flutter/material.dart';
import 'package:pa3/constants.dart';


class GenderCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  GenderCard({
    required this.icon,
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected ? kActiveCardColor : kCardColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: kWhite, size: 70),
              SizedBox(height: 10),
              Text(label, style: TextStyle(color: kLabelColor)),
            ],
          ),
        ),
      ),
    );
  }
}
