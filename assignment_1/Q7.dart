//q7.Given this code, identify any errors and explain why they occur: 
//```dart void main(){ String name = "Alice"; name = 123; print(name); } ``

void main() {
  String name = "Alice"; 
  //name = 123; // Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  print(name);
}