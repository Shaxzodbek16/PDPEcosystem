// Fruit sinfini yaratib, unga getJuice() metodini qo'shing. Apple va Orange
// subklasslarini yaratib, ularning getJuice() metodini mos ravishda
// "Apple juice" va "Orange juice" natijalarini chiqaradigan qilib override
// qiling. Fruit sinfida makeJuice(Fruit fruit) metodini qo'shing, bu metod
// getJuice() metodini chaqirib natijani chop etadi. Orange sinfida, getJuice()
// metodini covariant keywordi bilan belgilang. Apple va Orange sinflaridan
// obyektlar yarating va ularni makeJuice() metodiga o'tkazing. To'g'ri natija
// chiqishini tasdiqlang.

abstract class Fruit {
  void getJuice();

  void makeJuice(Fruit fruit);
}

class Apple extends Fruit {
  @override
  void getJuice() {
    print("Apple juice");
  }

  @override
  void makeJuice(covariant Apple apple) {
    this.getJuice();
  }
}

class Orange extends Fruit {
  @override
  void getJuice() {
    print("Orange juice");
  }

  @override
  void makeJuice(covariant Orange orange) {
    this.getJuice();
  }
}

void main() {
  Apple apple = Apple();
  Orange orange = Orange();
  apple.makeJuice(apple);
  orange.makeJuice(orange);
}
