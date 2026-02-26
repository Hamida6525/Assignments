/*Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions
  and validated constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00;
  print total area and total cost to 2 decimals.*/

import 'Circle.dart';
import 'Rectangle.dart';
import 'Triangle.dart';

void main() {
  List<Shape> shapes = [
    Rectangle(10, 5),
    Circle(7),
    Triangle(8, 6),
    Rectangle(20, 15),
  ];

  double totalArea = 0;

  for (var shape in shapes) {
    totalArea += shape.area();
  }

  print("Total paintable area: ${totalArea.toStringAsFixed(2)}");

  // Compute tiered cost
  double remaining = totalArea;
  double cost = 0;

  if (remaining > 50) {
    cost += 50 * 1.50;
    remaining -= 50;
  } else {
    cost += remaining * 1.50;
    remaining = 0;
  }

  if (remaining > 100) {
    cost += 100 * 1.25;
    remaining -= 100;
  } else {
    cost += remaining * 1.25;
    remaining = 0;
  }

  if (remaining > 0) {
    cost += remaining * 1.00;
  }

  print("Total paint cost: \$${cost.toStringAsFixed(2)}");
}



class Shape {
  double area() {
    return 0;
  }
}