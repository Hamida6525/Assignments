/*Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time.*/

void main() {
  Book book = Book('The Great Gatsby', 120);
  print(
    'Book: ${book.title}, Estimated Reading Time: ${book.readingTime} minutes',
  );
}

class Book {
  String _title;
  int _pages;
  Book(this._title, this._pages);

  set title(String value) {
    if (value.isEmpty) {
      _title = value;
    }
  }

  set pages(int value) {
    if (value <= 0) {
      _pages = value;
    }
  }

  String get title => _title;
  double get readingTime => _pages * 2;
}
