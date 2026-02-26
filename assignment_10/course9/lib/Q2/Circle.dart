import 'dart:math';

import 'Q2.dart';

class Circle extends Shape {
  double _radius;

 
  Circle(double radius) : _radius = 0 {
    setRadius(radius);
  }

  void setRadius(double value) {
    if (value > 0) {
      _radius = value;
    } else {
      print("Invalid radius");
    }
  }

  @override
  double area() => pi * _radius * _radius;
}