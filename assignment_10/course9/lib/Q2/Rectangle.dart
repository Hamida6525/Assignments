import 'Q2.dart';

class Rectangle extends Shape {
  double _width;
  double _height;

  Rectangle(double width, double height) : _width = 0, _height = 0 {
    setWidth(width);
    setHeight(height);
  }

 void setWidth(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print("Invalid width");
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
  double area() => _width * _height;
}
