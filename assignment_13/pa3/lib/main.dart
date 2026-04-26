import 'package:flutter/material.dart';
import 'package:pa3/calculate_button.dart';
import 'package:pa3/constants.dart';
import 'package:pa3/counter_section.dart';
import 'package:pa3/gender_section.dart';
import 'package:pa3/height_section.dart';

void main() {
  runApp(BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:Color( 0xff03051A),
      ),
      home: BMIScreen(),
    );
  }
}
