/*2. Food Delivery App – Orders & Menu
Imagine you are building a food delivery app.
- The app has a menu of food items (each with a name, price, and category like "Pizza" or "Drinks").
- A user can add multiple items to an order.
- The app should calculate the total price of the order.*/

import 'foodItem.dart';
import 'menu.dart';
import 'order.dart';

void main() {
  FoodItem pizza = FoodItem("Pepperoni Pizza", 150, "Pizza");
  FoodItem cola = FoodItem("Cola", 30, "Drinks");
  FoodItem burger = FoodItem("Burger", 120, "Fast Food");

  Order order = Order();
  order.addToOrder(pizza);
  order.addToOrder(cola);
  order.addToOrder(burger);
  print("Total Price: ${order.calculateTotal()}");
}
