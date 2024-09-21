// Fruit sinfini yaratib, unga getVitaminC metodini qo'shing. Bu getVitaminC
// metodini Orange, Lemon, va Strawberry kabi turli subklasslarda amalga oshiring.

abstract class Fruit {
  void getVitaminC();
}

class Orange extends Fruit {
  @override
  void getVitaminC() {
    print("$runtimeType has a vitamin C...");
  }
}

class Lemon extends Fruit {
  @override
  void getVitaminC() {
    print("$runtimeType has a vitamin C...");
  }
}

class Strawberry extends Fruit {
  @override
  void getVitaminC() {
    print("$runtimeType has a vitamin C...");
  }
}

void main() {
  List<Fruit> fruits = [Orange(), Lemon(), Strawberry()];
  for (Fruit fruit in fruits) {
    fruit.getVitaminC();
  }
}
