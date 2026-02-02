/*Digits Operations - Ask the user for a number (e.g., 528).
 - Print the sum of its digits and also print the largest digit.*/


import 'dart:io';
void main() {
  print('Enter a number:');
  String input = stdin.readLineSync()!;
  
  int sum = 0;
  int largestDigit = 0;

  for (int i = 0; i < input.length; i++) {
    int digit = int.parse(input[i]);
    sum += digit;
    if (digit > largestDigit) {
      largestDigit = digit;
    }
  }

  print('Sum of digits: $sum');
  print('Largest digit: $largestDigit');
}