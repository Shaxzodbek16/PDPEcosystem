// 1. Class - Human being; Object: man and woman.
// 2. Class - Color; Object: red and blue.
// 3. Class - Pets; Object: dog and cat.
// 4. Class - Wild animals; Object: tiger and lion.
// 5. Class - Drinks; Object: hot and cold drinks
// 6. Class - Pen; Object: ballpoint and ink pen
// 7. Class - water; Object: freshWater and rainWater
// 8. Class - tea; Object: green and black
// 9. Class - food; Object: lunch and dinner
// 10. Class - coffee; Object: filter and instant coffee

void main() {
  Human man = Human("Shaxzodbek", "Muxtorov", true);
  Human woman = Human("Error", "Bug", false);

  Color red = Color("red");
  Color blue = Color("blue");

  Pets dog = Pets("Dog");
  Pets cat = Pets("Cat");

  WildAnimals tiger = WildAnimals("tiger");
  WildAnimals lion = WildAnimals("lion");

  Drinks hot = Drinks("hot");
  Drinks cold = Drinks("cold");

  Pen ballpoint = Pen("ballpoint");
  Pen inkPen = Pen("ink pen");

  Water freshWater = Water("freshWater");
  Water rainWater = Water("rainWater");

  Tea green = Tea("green");
  Tea black = Tea("black");

  Food lunch = Food("lunch");
  Food dinner = Food("dinner");

  Coffee filter = Coffee("Filter");
  Coffee instantCoffee = Coffee("instant coffee");
}


class Coffee{
  String type;
  Coffee(this.type);
}


class Food{
  String eatTime;
  Food(this.eatTime);
}

class Tea{
  String type;
  Tea(this.type);
}

class Water{
  String type;
  Water(this.type);
}

class Pen{
  String type;
  Pen(this.type);
}

class Drinks{
  String name;
  Drinks(this.name);
}

class Human{
  String name, surname;
  bool gender; // true means male
  Human(String this.name, String this.surname, bool this.gender);
}

class Color{
  String name;
  Color(String this.name);
}

class Pets{
  String name;
  Pets(String this.name);
}

class WildAnimals{
  String name;
  WildAnimals(this.name);
}