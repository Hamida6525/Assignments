import 'package:flutter/material.dart';

class EmptyPage extends StatelessWidget {
  const EmptyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check_circle_outline, size: 85, color: Color(0xffABCBC6)),
          const SizedBox(height: 20),
          Text(
            'No tasks yet', style: TextStyle(color:Color(0xff747A78),fontSize: 20 ),
          ),
          const SizedBox(height: 8),
          Text(
            'Add a task to get started',
            style: TextStyle(color: Colors.grey[500]),),
        ],
      ),
    );
  }
}
