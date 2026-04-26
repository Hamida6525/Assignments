import 'package:flutter/material.dart';
import 'package:quiz_app/StartScreen.dart';


class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Startscreen() 
    );
  }
}