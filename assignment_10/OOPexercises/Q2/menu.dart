import 'foodItem.dart';

class Menu {
  List<FoodItem> items = [];

  void addItem(FoodItem item) {
    items.add(item);
  }

  void showMenu() {
    for (var item in items) {
      print("${item.name} - ${item.price} (${item.category})");
    }
  }
}
