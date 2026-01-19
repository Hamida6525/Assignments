/* Exercise 10:
10. a) Demonstrate var vs dynamic: assign dynamic value first as an int, then as a String, printing after each.
b) Create var greeting = 'Hi'; change it to another String and print.
c) Declare num pi = 3.14159; print pi.toInt() and pi.toStringAsFixed(3). */

void main() {
  // a) Demonstrate var vs dynamic
  dynamic variable = 25; // Assigning an int
  print('Dynamic as int: $variable');
  
  variable = 'String'; // Assigning a String
  print('Dynamic as String: $variable');

  // b) Create var greeting and change it
  var greeting = 'Hi';
  print('greeting: $greeting');
  
  greeting = 'Hello';
  print('Updated greeting: $greeting');

  // c) Declare num pi and print conversions
  num pi = 3.14159;
  print('pi: ${pi.toInt()}');
  print('pi: ${pi.toStringAsFixed(3)}');
}



