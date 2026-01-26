/*Write a Dart program that works with a nullable list of integers.
 If the list is null or empty, print 'No scores'. 
 Otherwise, calculate and print the sum of the first and last elements
  and check if it is greater than or equal to 40.*/

void main() {
  List<int>? scores; // Nullable list of integers

  // Check if the list is null or empty
  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
    // Calculate the sum of the first and last elements
    int sum = scores.first + scores.last;
    print('Sum of first and last elements: $sum');

    // Check if the sum is greater than or equal to 40
    if (sum >= 40) {
      print('The sum is greater than or equal to 40.');
    } else {
      print('The sum is less than 40.');
    }
  }
}

