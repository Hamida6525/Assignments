//q4.How can you declare a variable in Dart to store a person's age and
// ensure it can only hold integer values? Write the code

void main() {
  int age = 25; 

  if (age is int) {
    print("Person's age is: $age");
  } else {
    print("Age must be an integer.");
  }

  //print("Person's age is: $age");
} 




