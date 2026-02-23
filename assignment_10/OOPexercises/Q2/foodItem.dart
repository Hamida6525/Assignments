class FoodItem {
  String name;
  double price;
  String category;

  FoodItem(this.name, this.price, this.category);

   @override
  String toString() {
    return "Name: $name | Price: $price | Category: $category";
  }
}