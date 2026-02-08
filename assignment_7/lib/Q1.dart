/*Create a class City with attributes name and population.
 In main(), create two city objects and print their details.*/

void main() {

  City city1 = City("Egypt", "10 million");
  City city2 = City("Japan", "36 million");

  print("City: ${city1.Name}, Population: ${city1.Population}");
  print("City: ${city2.Name}, Population: ${city2.Population}");
}

class City {
  String Name;
  String Population;
  City(this.Name, this.Population);
}
