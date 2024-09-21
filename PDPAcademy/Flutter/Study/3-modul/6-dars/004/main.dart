// Food sinfini yaratib, unga cook metodini qo'shing. Bu cook metodini Burger,
// Pizza, va Sushi kabi turli subklasslarda amalga oshiring.

abstract class Food {
  void cook();
}

class Burger extends Food {
  @override
  void cook() {
    print("$runtimeType is being cooked...");
  }
}

class Pizza extends Food {
  @override
  void cook() {
    print("$runtimeType is being cooked...");
  }
}

class Sushi extends Food {
  @override
  void cook() {
    print("$runtimeType is being cooked...");
  }
}

void main() {
  List<Food> foods = [Burger(), Pizza(), Sushi()];
  for (Food food in foods) {
    food.cook();
  }
}
