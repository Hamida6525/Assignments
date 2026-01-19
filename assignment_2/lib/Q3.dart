/* Exercise 3:
3. a) Create String phrase = 'Learning Dart'.
b) Print phrase.length, phrase.toLowerCase(), and phrase.contains('Dart').
c) Trim spaces from String test = ' Dart ' and print the result. */

void main() {
  // a) Create String phrase
  String phrase = 'Learning Dart';

  // b) Print length, lowercase, and contains
  print('Length of phrase: ${phrase.length}');
  print('Lowercase phrase: ${phrase.toLowerCase()}');
  print('Contains "Dart": ${phrase.contains('Dart')}');

  // c) Trim spaces from test string
  String test = ' Dart ';
  print('Test: "${test.trim()}"');
}