import 'package:flutter/material.dart';
import 'package:task_app/screens/home_page.dart';

void main() {
  runApp(const TaskApp());
}

class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const TaskAppHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
