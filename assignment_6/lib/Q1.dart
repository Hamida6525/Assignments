/*Q1. Class with Method - Create a class Calculator with two attributes: num1 and num2.
 - Add a method addNumbers() that prints the sum of the two numbers.
 - Create an object in main() and call the method.*/

void main() {
  Calculator calc = Calculator();
  calc.num1 = 50;
  calc.num2 = 20;
  calc.addNumbers();
}

class Calculator {
  num? num1;
  num? num2;
  
  void addNumbers() {
    print('The sum is: ${num1! + num2!}');
  }
}
