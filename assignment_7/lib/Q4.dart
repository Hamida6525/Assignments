/*Create a class Employee with attributes name and salary.
 Add a method giveRaise(int amount) that increases the salary.
 In main(), create an employee, give them a raise, and print the new salary.*/

void main() {

  Employee emp = Employee("Ahmed", 60000);
  
  print("Employee: ${emp.name}, Salary: \$${emp.salary}");
  
  emp.giveRaise(5000);
  
  print("After raise, Salary: \$${emp.salary}");
}

class Employee {
  String name;
  double salary;

  Employee(this.name, this.salary);

  void giveRaise(int amount) {
    salary += amount;
  }
}
