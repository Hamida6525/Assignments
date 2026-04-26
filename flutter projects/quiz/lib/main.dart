import 'package:flutter/material.dart';
import 'package:quiz/screens/startScreen.dart';

void main() {
  runApp(const Quiz());
}

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Startscreen(),
    );
  }
}
