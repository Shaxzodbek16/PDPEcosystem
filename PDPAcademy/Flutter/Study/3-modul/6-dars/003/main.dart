// Animal sinfini yaratib, unga move metodini qo'shing. Bu move metodini
// Bird, Fish, va Insect kabi turli subklasslarda amalga oshiring.

abstract class Animal{
  void move();
}
class Bird extends Animal{
  @override
  void move() {
    print("$runtimeType is moving...");
  }
}
class Fish extends Animal{
  @override
  void move() {
    print("$runtimeType is moving...");
  }
}
class Insect extends Animal{
  @override
  void move() {
    print("$runtimeType is moving...");
  }
}

void main(){
  List<Animal> animals = [Bird(), Insect(), Fish()];
  for(Animal animal in animals){
    animal.move();
  }

}