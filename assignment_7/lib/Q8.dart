/*Ask the user to input a sentence.
 Print all the words that appear only once in the sentence.
 Also print the total count of unique words. */

import 'dart:io';

void main() {
  print("Enter a sentence:");
  String sentence = stdin.readLineSync()!;
  
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};
  
  for (var word in words) {
    wordCount[word] = (wordCount[word] ?? 0) + 1;
  }
  
  List<String> uniqueWords = wordCount.entries
      .where((entry) => entry.value == 1)
      .map((entry) => entry.key)
      .toList();
  
  print("Unique words:");
  uniqueWords.forEach(print);
  
  print("Total count of unique words: ${uniqueWords.length}");
}
