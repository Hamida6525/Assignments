/*Write a Dart program that works with a nullable list of integers.
 If the list is null or empty, print 'No scores'. 
 Otherwise, calculate and print the sum of the first and last elements
  and check if it is greater than or equal to 40.*/

void main() {
  List<int>? scores = null; 
  //if (scores != null && scores.isNotEmpty) 
  if (scores == null || scores.isEmpty) {
    print('No scores');
  } else {
   
    int sum = scores.first + scores.last;
    print('Sum of first and last elements: $sum');

    
    if (sum >= 40) {
      print('The sum is greater than or equal to 40.');
    } else {
      print('The sum is less than 40.');
    }
  }
}

