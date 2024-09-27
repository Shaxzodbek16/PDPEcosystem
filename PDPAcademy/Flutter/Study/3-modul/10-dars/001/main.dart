// Animal nomli base sinf hosil qiling. Sinfda makeSound() nomli method
// mavjud bo’lsin. Animal sinfidan meros olib Dog hamda Cat sinflarini hosil
// qiling.

abstract base class Animal {
  void makeSound();
}

base class Dog extends Animal {
  @override
  void makeSound() {
    print("Wow");
  }
}

base class Cat extends Animal {
  @override
  void makeSound() {
    print("Mow");
  }
}
