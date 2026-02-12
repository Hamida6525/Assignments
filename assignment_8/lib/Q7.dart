/*Ask the user to input a list of integers.
- Print the largest number, the smallest number, and their difference.
- Calculate the average of the list.
- Print all numbers that are above the average.
- Finally, print how many numbers are even and how many are odd in the list.*/

import 'dart:io';

void main() {
  List<int> numbers = [];

  print('Please enter 5 integers:');
  for (int i = 0; i < 5; i++) {
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
  }
  int largest = 0;
  int smallest = 0;
  for (int num in numbers) {
    if (num > largest) {
      largest = num;
    }
    if (num < smallest) {
      smallest = num;
    }
  }
  print('Largest number: $largest');
  print('Smallest number: $smallest');
  print('Difference: ${largest - smallest}');

  double average = 0;
  for (int num in numbers) {
    average += num;
  }
  average /= numbers.length;
  print('Average: $average');
  print('Numbers above average:');
  for (int num in numbers) {
    if (num > average) {
      print(num);
    }
  }
  int evenCount = 0;
  int oddCount = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      evenCount++;
    } else {
      oddCount++;
    }
  }
  print('Even numbers count: $evenCount');
  print('Odd numbers count: $oddCount');
}
