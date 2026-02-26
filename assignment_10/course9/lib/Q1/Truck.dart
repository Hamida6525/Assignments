import 'Q1.dart';

class Truck extends Vehicle {
  double _cargoWeight;
  Truck(this._cargoWeight,String name, double capacity, double efficiency)
      :
        super(name, capacity, efficiency) {
    setCargoWeight(_cargoWeight);
  }

  void setCargoWeight(double value) {
    if (value >= 0) {
      _cargoWeight = value;
    } else {
      print("Invalid cargo weight");
    }
  }

  @override
  double calculateFuel(double distance) {
    double baseFuel = super.calculateFuel(distance);
    return baseFuel * (1 + (_cargoWeight * 0.10));// كل طن يزيد 10%
  }

  bool canCompleteTrip(double totalDistance, double totalFuel) {
    if (_cargoWeight > 10) {
      print("The cargo weight exceeds the allowed limit");
      return false;
    }
    return totalFuel <= fuelCapacity;
  }
}