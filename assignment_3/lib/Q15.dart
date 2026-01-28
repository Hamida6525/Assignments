/*Write a Dart program that simulates a simple router using a switch statement on 
  a string path ('/', '/products', '/profile', or other).
  Handle each case with appropriate output,
  including maps and null safety where needed.*/

void main() {
  String path = '/profile';
  Map<String, String> screens = {
    '/': 'Home Page',
    '/products': 'Products Page',
    '/profile': 'Profile Page', 
  };
  switch (path) {
    case '/':
      print(screens['/']);
      break;
    case '/products':
      print(screens['/products']);
      break;
    case '/profile':
      print(screens['/profile']);
      break;
    default:
      print('Not Found Screen');
  }
}
