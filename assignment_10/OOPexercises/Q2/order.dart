import 'foodItem.dart';

class Order {
  List<FoodItem> orderedItems = [];

  void addToOrder(FoodItem item) {
    orderedItems.add(item);
  }

  double calculateTotal() {
    double total = 0;
    for (var item in orderedItems) {
      total += item.price;
    }
    return total;
  }
}