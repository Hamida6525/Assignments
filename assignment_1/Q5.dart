//q5.What is the difference between var and dynamic in Dart? Provide an example of each.

/* 
var :(keyword not datatype) is used to take the type of the value assigned to it at runtime.
Dynamic : is a special type that allows a variable to hold values of any type and can change types at runtime.
*/

void main() {
  // Example of var
  var name = "String"; // 'name' is inferred as String
  print("Name: $name");
  
  // Example of dynamic
  dynamic age = 25; // 'age' can hold any type
  print("Age (int): $age");

  age = "Now I'm a string"; // 'age' can change type
  print("Age (string): $age");
}

