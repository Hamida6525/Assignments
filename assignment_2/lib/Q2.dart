/* Exercise 2:
2. a) Declare variables: String country, int year, double weight, bool likesCoding. Assign values.
b) Print a sentence that includes all values using string interpolation.
c) Change weight to a different value and print only the updated one. */

void main() {
  // a) Declare variables
  String country = "Egypt";
  int year = 2026;
  double weight = 60.0;
  bool likesCoding = true;

  // b) Print a sentence with all values
  print(
      "I live in $country, year is $year, my weight is $weight kg and it is $likesCoding ,I like coding.");

  // c) Change weight and print updated value
  weight = 70.0;
  print("Updated weight: $weight kg");
}

