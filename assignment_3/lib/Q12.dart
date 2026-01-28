/* Create a Dart program that safely reads a phone number from a map.
 If the phone number is null,
print a default message. Then update the phone number and print its length.*/


void main() {
  Map<String, String?> user = {
    'name': 'Ahmed',
    'phone': null, 
  };
  String phoneNumber = user['phone'] ?? "Null";
  print('Phone Number: $phoneNumber');

  user['phone'] = '0123456789';

  String updatedPhoneNumber = user['phone']!;
  print('Phone Number Length: ${updatedPhoneNumber.length}');
}


