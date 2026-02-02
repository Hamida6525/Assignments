/*Word Reversal & Vowel Count - Take a word from the user.
 - Print the word reversed, and also count how many vowels it has.*/

import 'dart:io';
void main() {
  print('Enter a word:');
  String word = stdin.readLineSync()!;

  String reversedWord = word.split('').reversed.join('');
  int vowelCount = 0;
  List<String> vowels = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z",
                         "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"];

  for (int i = 0; i < word.length; i++) {
    if (vowels.contains(word[i])) {
      vowelCount++;
    }
  }

  print('Reversed word: $reversedWord');
  print('Number of vowels: $vowelCount');
}