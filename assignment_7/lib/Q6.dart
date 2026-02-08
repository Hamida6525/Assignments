/*Create a class NumberCheck with an attribute value.
 Add a method isEven() that returns true if the number is even, false otherwise.
 In main(), test the method with one number.*/

void main() {
  NumberCheck numCheck = NumberCheck(150);
  
  print("Number: ${numCheck.value}, Is Even: ${numCheck.isEven()}");
}

class NumberCheck {
  int value;

  NumberCheck(this.value);

  bool isEven() {
    return value % 2 == 0;
  }
}
