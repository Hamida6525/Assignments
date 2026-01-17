//q17.If you need a variable that can hold any type of value and may change during execution,
// which data type would you use? Write a code example to show this.

void main() {
  dynamic x = 10; 
  print("value: $x");

  x = "Now I'm a string"; // Changing to a string value
  print("value: $x");
  
  x = 3.14; // Changing to a double value
  print("value: $x");
}

