/* Write a Dart program that evaluates three integer variables with different logical and comparison expressions.
 Print the results, then decide whether to print 'Rule passed' or 'Rule failed' based on one of the expressions.*/

void main() {
  int a = 10;
  int b = 20;
  int c = 15;

  
  bool expr1 = (a < b) && (b > c); // true
  bool expr2 = (a + c) == b; // false
  bool expr3 = (b - a) >= c; // true

  print('Expression 1 (a < b && b > c): $expr1');
  print('Expression 2 (a + c == b): $expr2');
  print('Expression 3 (b - a >= c): $expr3');

  if (expr2) {
    print('Rule passed');
  } else {
    print('Rule failed');
  }
}
