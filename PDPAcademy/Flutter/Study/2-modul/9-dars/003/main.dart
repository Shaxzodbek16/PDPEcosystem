// Berilgan UML bo’yicha klasslarni hosil qiling.
class Animal {
  String _name;

  Animal(this._name);

  @override
  String toString() {
    return "Animal " + this.name;
  }

  String get name {
    return _name;
  }
}

class Mammal extends Animal {
  Mammal(super.name);

  @override
  String toString() => "Mammal " + name;
}

class Dog extends Mammal {
  Dog(super.name);

  String get name => name;

  void greets() {
    print("Hello from ${name}");
  }

  @override
  String toString() {
    return "Dog $name";
  }
}

class Cat extends Mammal {
  Cat(super.name);

  String get name => name;

  void greets() {
    print("Hello from ${name}");
  }

  @override
  String toString() {
    return "Cat $name";
  }
}
