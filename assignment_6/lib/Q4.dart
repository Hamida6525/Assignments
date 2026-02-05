/*Q4. Class with Default Attribute Value
 - Create a class Product with attributes name and price. 
 - Give price a default value of 0.
 - Create two objects: one with a custom price and one with the default price.
  Print their details.*/

void main() {
  Product product1 = Product("Laptop", 19000);
  Product product2 = Product("Mobile");
  product1.priceDetails();
  product2.priceDetails();
}

class Product {
  String? Name;
  double? Price;

  Product(this.Name, [this.Price = 0]);
  void priceDetails() {
    print("Product Name: $Name, Price: $Price");
  }
}
