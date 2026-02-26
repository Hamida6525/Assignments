/*Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields)
  and validated constructors (invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type 
  and introduce one private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type;
  specialized types must override it with their own rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle 
  and print which vehicles cannot complete the route under their own constraints
  (you define the constraint per type)*/



import 'Car.dart';
import 'Truck.dart';

void main() {
  // Total sum of trips
  List<double> trips = [100, 120, 70];

  List<Vehicle> vehicles = [
    Car("Sedan", 50, 6, 7),
    Truck("Big Truck", 120, 15, 5),
    Car("Toyota", 180, 5, 3)
  ];

  for (var vehicle in vehicles) {
    print("${vehicle.name}");

    double totalFuel = 0;
    double totalDistance = 0;

    for (var distance in trips) {
      totalFuel += vehicle.calculateFuel(distance);
      totalDistance += distance;
    }

    print("Total Distance: $totalDistance Km");
    print("Total Fuel Required: $totalFuel Liters");

    if (vehicle.canCompleteTrip(totalDistance, totalFuel)) {
      print("The vehicle can complete the trip");
    } else {
      print("The vehicle cannot complete the trip");
    }
  }
}


class Vehicle {
  String _name;
  double _fuelCapacity;
  double _fuelEfficiency;

  Vehicle(this._name, double fuelCapacity, double fuelEfficiency)
      : _fuelCapacity = 0,
        _fuelEfficiency = 0 {
    setFuelCapacity(fuelCapacity);
    setFuelEfficiency(fuelEfficiency);
  }

  get name => _name;

  void setFuelCapacity(double value) {
    if (value > 0) {
      _fuelCapacity = value;
    } else {
      print("Invalid FuelCapacity");
    }
  }

  void setFuelEfficiency(double value) {
    if (value > 0) {
      _fuelEfficiency = value;
    } else {
      print("Invalid FuelEfficiency");
    }
  }

  get fuelCapacity => _fuelCapacity;

  double calculateFuel(double distance) {
    return (distance / 100) * _fuelEfficiency;
  }

  bool canCompleteTrip(double totalDistance, double totalFuel) {
    return totalFuel <= _fuelCapacity;
  }
}
