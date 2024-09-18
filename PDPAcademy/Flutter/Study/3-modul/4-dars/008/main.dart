// Quyidagi faylda keltirilgan Chizmaga mos sinflarni shakllantiring.

abstract class Monster {
  String name;

  void attack();

  Monster(this.name);
}


class FireMonster extends Monster{
  FireMonster(super.name);

  @override
  void attack() {
    print("$runtimeType attacking...");
  }
  @override
  String toString() {
    return this.name;
  }
}

class WaterMonster extends Monster{
  WaterMonster(super.name);

  @override
  void attack() {
    print("$runtimeType attacking...");
  }
  @override
  String toString() {
    return this.name;
  }
}

class StoneMonster extends Monster{
  StoneMonster(super.name);

  @override
  void attack() {
    print("$runtimeType attacking...");
  }
  @override
  String toString() {
    return this.name;
  }
}