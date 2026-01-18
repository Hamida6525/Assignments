/* Exercise 6:
6. a) Create List animals with three values.
b) Add a new animal, remove the last one, and update the second element.
c) Print animals.first, animals.last, and animals.length. */

void main() {
  // a) Create List animals with three values.
  List<String> animals = ['Cat', 'Dog', 'Elephant'];

  // b) Add a new animal, remove the last one, and update the second element.
  animals.add('Lion'); // Adding a new animal
  animals.removeLast(); // Removing the last animal
  animals[1] = 'Tiger'; // Updating the second element

  // c) Print animals.first, animals.last, and animals.length.
  print(animals);
  print('First animal: ${animals.first}');
  print('Last animal: ${animals.last}');
  print('Total number of animals: ${animals.length}');
}
