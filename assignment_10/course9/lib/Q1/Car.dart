import 'Q1.dart';

class Car extends Vehicle {
  int _passengers;

  Car(this._passengers,String name, double capacity, double efficiency)
      :
        super(name, capacity, efficiency) {
    setPassengers(_passengers);
  }

  void setPassengers(int value) {
    if (value > 0) {
      _passengers = value;
    } else {
      print("Invalid number of Passengers");
    }
  }

  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);
    return baseFuel * (1 + (_passengers * 0.05)); // كل راكب يزيد 5%
  }

  bool canCompleteTrip(double totalDistance, double totalFuel) {
    if (_passengers > 5) {
      print("The number of passengers exceeds the allowed limit");
      return false;
    }
    return totalFuel <= fuelCapacity;
  }
}