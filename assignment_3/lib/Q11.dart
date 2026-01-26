/*Write a Dart program that applies discounts to a price.
 Use nested if/else to apply different discounts based on whether the user is a student, has a coupon,
 or if the price is above a threshold.
 Print the final price.*/

void main() {
  double price = 150.0; // Original price
  bool isStudent = true; // Example user status
  bool hasCoupon = false; // Example coupon status
  double finalPrice = price;

  // Apply discounts based on conditions
  if (isStudent) {
    finalPrice *= 0.7;
  } else {
    if (hasCoupon) {
      finalPrice *= 0.9;
    } else {
    if (price > 100) {
        finalPrice *= 0.95;
      }
    }
  }
  // Print the final price
  print('The final price is: \$$finalPrice');
}
