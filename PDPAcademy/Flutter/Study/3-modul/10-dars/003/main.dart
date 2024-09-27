// Bir kutubxonada Vehicle nomli sealed sinfni hosil qiling, hamda bu sinfdan
// meros olib Car va Motorbike sinflarini hosil qiling. Va bir listda bir nechta Car
// va Motorbike ga tegishli obyektlarni hosil qiling. So’ng for in loop yordamida
// obyektlarni turiga qarab ikki list hosil qiling car va motorbike nomli.

sealed class Vehicle {}

class Car extends Vehicle {
  final String model;

  Car(this.model);
}

class Motorbike extends Vehicle {
  final String model;

  Motorbike(this.model);
}

void main() {
  List<Vehicle> vehicles = [
    Car('Toyota'),
    Motorbike('Harley'),
    Car('Honda'),
    Motorbike('Ducati')
  ];

  List<Car> cars = [];
  List<Motorbike> motorbikes = [];

  for (var vehicle in vehicles) {
    if (vehicle is Car) {
      cars.add(vehicle);
    } else if (vehicle is Motorbike) {
      motorbikes.add(vehicle);
    }
  }

  print('Cars: ${cars.map((car) => car.model).toList()}');
  print(
      'Motorbikes: ${motorbikes.map((motorbike) => motorbike.model).toList()}');
}
