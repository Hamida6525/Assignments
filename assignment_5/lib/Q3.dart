/*Word Reversal & Vowel Count - Take a word from the user.
 - Print the word reversed, and also count how many vowels it has.*/

import 'dart:io';
void main() {
  print('Enter a word:');
  String word = stdin.readLineSync()!;

  String reversedWord = word.split('').reversed.join('');
  int vowelCount = 0;
  List<String> vowels = ['a', 'e', 'i', 'o', 'u',
                         'A', 'E', 'I', 'O', 'U'];

  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }

  print('Reversed word: $reversedWord');
  print('Number of vowels: $vowelCount');
}