// 1 - taskdan 8 - taskgacha barcha subclasslardan obyekt olib ularni bir
// listda jamlang, hamda loop orqali aylanib vazifada ko’rsatilgan
// methodlarni ishlating:
//
// Vehicle sinfini yaratib, unga drive metodini qo'shing. Bu drive metodini
// Car, Motorcycle, va Truck kabi turli subklasslarda amalga oshiring.

abstract class Vehicle {
  void drive();
}

class Car extends Vehicle {
  @override
  void drive() {
    print("$runtimeType is driving...");
  }
}

class Motorcycle extends Vehicle {
  @override
  void drive() {
    print("$runtimeType is driving...");
  }
}

class Truck extends Vehicle {
  @override
  void drive() {
    print("$runtimeType is driving...");
  }
}

void main() {
  List<Vehicle> vehicles = [Car(), Motorcycle(), Truck()];
  for (Vehicle vehicle in vehicles) {
    vehicle.drive();
  }
}
