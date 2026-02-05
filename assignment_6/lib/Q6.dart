/*Q6. Sentence Analyzer - Ask the user to input a sentence.
 - Print how many words it contains.
 -Then print the shortest word and the longest word from the sentence.*/

import 'dart:io';

void main() {
  print('Enter a sentence:');
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    List<String> words = input.split(' ');

    int wordCount = words.length;
    String shortestWord = words.reduce((a, b) => a.length <= b.length ? a : b);
    String longestWord = words.reduce((a, b) => a.length >= b.length ? a : b);

    print('Number of words: $wordCount');
    print('Shortest word: $shortestWord');
    print('Longest word: $longestWord');
  }
}