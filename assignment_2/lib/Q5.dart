/* Exercise 5:
5. a) Declare two integers a and b.
b) Print outcomes of comparison operators: a == b, a != b, a > b, a < b, a >= b, a <= b.
c) Declare int sum = a + b; check if sum equals 20 and print the boolean result. */

void main() {
  // a) Declare two integers a and b
  int a = 10;
  int b = 15;

  // b) Print outcomes of comparison operators
  print("a == b: ${a == b}");
  print("a != b: ${a != b}");
  print("a > b: ${a > b}");
  print("a < b: ${a < b}");
  print("a >= b: ${a >= b}");
  print("a <= b: ${a <= b}");

  // c) Declare int sum = a + b; check if sum equals 20 and print the boolean result
  int sum = a + b;
  print("Does sum equal 20? ${sum == 20}");
}