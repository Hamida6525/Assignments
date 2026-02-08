/*Ask the user for a number (e.g., 9875).
 Keep summing its digits until the result is a single digit.
 Print the final single-digit result. (Example: 9+8+7+5 = 29 → 2+9 = 11 → 1+1 = 2)*/

import 'dart:io';

void main() {
  print("Enter a number:");
  int number = int.parse(stdin.readLineSync()!);
  int result = sumDigits(number);
  print("Final single-digit result: $result");
}

int sumDigits(int number) {
  for (int sum = 0; number > 0; number ~/= 10) {
    sum += number % 10;
    if (sum >= 10) {
      sum = sumDigits(sum);
    }
    if (number < 10 && sum < 10) {
      return sum;
    }
  }
  return 0;
}
