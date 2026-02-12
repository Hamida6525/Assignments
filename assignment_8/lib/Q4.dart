/*Create a class Product with private fields _name and _price.
- Reject empty names and negative prices in setters.
- Add a computed getter discountedPrice that returns the price with a 10% discount applied.
- In main(), demonstrate setting values and printing the original and discounted price.*/

void main() {
  Product product = Product('Laptop', 1000);
  print('Product: ${product.name}, Price: \$${product.price}, Discounted Price: \$${product.discountedPrice}');
}

class Product {
  String _name;
  double _price;

  Product(this._name, this._price);

  set name(String value) {
    if (value.isEmpty) {
      _name = value;
    }
  }

  set price(double value) {
    if (value < 0) {
      _price = value;
    }
  }

  String get name => _name;
  double get price => _price;
  double get discountedPrice => _price * 0.9; // 10% discount
}
