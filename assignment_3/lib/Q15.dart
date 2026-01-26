/*Write a Dart program that simulates a simple router using a switch statement on 
  a string path ('/', '/products', '/profile', or other).
  Handle each case with appropriate output, including maps and null safety where needed.*/

void main() {
  String path = '/products';

  switch (path) {
    case '/':
      print('Home Page');
      break;
    case '/products':
      Map<String, double> products = {
        'Laptop': 1000.90,
        'Smartphone': 800.99,
        'Tablet': 500.99,
      };
      print('Products Page:');
      products.forEach((product, price) {
        print('$product: \$$price');
      });
      break;
    case '/profile':
      Map<String, String?> userProfile = {
        'name': 'John Doe',
        'phone': null, // Simulating a null value
      };
      String phone = userProfile['phone'] ?? 'Phone number not provided';
      print('Profile Page:');
      print('Name: ${userProfile['name']}');
      print('Phone: $phone');
      break;
    default:
      print('other');
  }
}
