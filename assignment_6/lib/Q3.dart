/*Q3. Modify Attributes - Create a class Person with attributes name and age.
 - Create an object and set its initial values using a constructor.
 - Then change the age of the object and print the updated details.*/

void main() {
  Person person = Person('Ahmed', 30);
  print('Name: ${person.Name}, Age: ${person.Age}');
  
  person.Age = 35;
  
  print('Name: ${person.Name}, Age: ${person.Age}');
}

class Person {
  String? Name;
  int? Age;

  Person(this.Name, this.Age);

}
