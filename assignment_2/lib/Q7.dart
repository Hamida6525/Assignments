/* Exercise 7:
7. a) Start with List numbers = [4, 4, 5, 6, 6, 7].
b) Convert it to a Set to remove duplicates and print it.
c) Use add(), remove(), and contains() with the set, printing each result. */

void main() {
  // a) Start with List numbers
  List<int> numbers = [4, 4, 5, 6, 6, 7];

  // b) Convert it to a Set to remove duplicates and print it
  Set<int> uniqueNumbers = {4,4,5,6,6,7};
  print('Unique Numbers Set: $uniqueNumbers');

  // c) Use add(), remove(), and contains() with the set, printing each result
  uniqueNumbers.add(9);
  print('After adding 9: $uniqueNumbers');

  uniqueNumbers.remove(4);
  print('After removing 4: $uniqueNumbers');

  bool contains = uniqueNumbers.contains(6);
  print('Set contains 6?: $contains');
}
