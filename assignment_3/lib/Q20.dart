/*Write a Dart program that checks access rules for a ticket gate.
 If the user is under 18, check if they have a parent. 
 Use a switch statement on an area variable (general or restricted) to decide what message to print.*/

void main() {
  int age = 25;
  bool hasParent = true;
  String area = 'general';

  if (age < 18) {
    if (hasParent) {
      print('Access granted.');
    } else {
      print('Access denied. You must have a parent.');
      return;
    }
  } else {
    print('Access granted.');
  }

  // Use switch statement to print message based on area
  switch (area) {
    case 'general':
      print('Welcome to the general area.');
      break;
    case 'restricted':
      print('Welcome to the restricted area.');
      break;
    default:
      print('Invalid area specified.');
  }
}
