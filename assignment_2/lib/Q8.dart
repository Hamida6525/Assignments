/* Exercise 8:
8. a) Create a Map book = {'title': 'Dart Guide', 'pages': 120, 'price': 19.99}.
b) Print book['title'], update price, and add a new key 'author'.
c) Print all keys, values, and check if 'pages' exists as a key. */

void main() {
  // a) Create a Map book
  Map<String, dynamic> book = {
    'title': 'Dart Guide',
    'pages': 120,
    'price': 19.99,
  };

  // b) Print book['title'], update price, and add a new key 'author'.
  print('Title: ${book['title']}');
  book['price'] = 24.99;
  book['author'] = 'John Doe';

  // c) Print all keys, values, and check if 'pages' exists as a key.
  print('Keys: ${book.keys}');
  print('Values: ${book.values}');
  print('Contains "pages" key?: ${book.containsKey('pages')}');

  book.containsKey("pages");
}
