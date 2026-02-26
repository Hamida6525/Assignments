import 'Q2.dart';

class Triangle extends Shape {
  double _base;
  double _height;

  Triangle(double base, double height)
      : _base = 0,
        _height = 0 {
    setBase(base);
    setHeight(height);
  }

  void setBase(double value) {
    if (value > 0) {
      _base = value;
    } else {
      print("Invalid base");
    }
  }

  void setHeight(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print("Invalid height");
    }
  }

  @override
  double area() => 0.5 * _base * _height;
}