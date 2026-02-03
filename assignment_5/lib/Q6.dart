/*Number Guessing (3 Tries) - Generate a random number between 1 and 20.
 - Let the user guess up to 3 times.
 If they fail, reveal the correct number.*/


import 'dart:io';
import 'dart:math';
void main() {
  Random random = Random();
  int targetNumber = random.nextInt(20) + 1;
  int maxAttempts = 3;
  bool hasGuessedCorrectly = false;

  print('Guess the number between 1 and 20. You have $maxAttempts attempts.');

  for (int attempt = 1; attempt <= maxAttempts; attempt++) {
    print('Attempt $attempt: Enter your guess:');
    int? userGuess = int.parse(stdin.readLineSync()!);

    if (userGuess == targetNumber) {
      print('You guessed the correct number: $targetNumber');
      hasGuessedCorrectly = true;
      break;
    } else if (userGuess < targetNumber) {
      print('Too low!');
    } else {
      print('Too high!');
    }
  }

  if (!hasGuessedCorrectly) {
    print('The correct number was $targetNumber.');
  }
}