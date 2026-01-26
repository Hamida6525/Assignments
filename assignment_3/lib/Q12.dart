/* Create a Dart program that safely reads a phone number from a map.
 If the phone number is null,
print a default message. Then update the phone number and print its length.*/


void main() {
  Map<String, String?> user = {
    'name': 'Ahmed',
    'phone': null, // Phone number is initially null
  };

  // Safely read the phone number with null safety
  String phoneNumber = user['phone'] ?? "Null";
  print('Phone Number: $phoneNumber');

  // Update the phone number
  user['phone'] = '123-456-7890';

  // Print the length of the updated phone number
  String updatedPhoneNumber = user['phone']!;
  print('Phone Number Length: ${updatedPhoneNumber.length}');
}


