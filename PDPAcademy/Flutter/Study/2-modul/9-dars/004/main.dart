// Berilgan UML bo’yicha klasslarni hosil qiling.

class Movable {
  void moveUp() {
    print("Moving Up...");
  }

  void moveDown() {
    print("Moving Down...");
  }

  void moveLeft() {
    print("Moving Left...");
  }

  void moveRight() {
    print("Moving Right...");
  }
}

class MovablePoint extends Movable {
  int x, y, xSpeed, ySpeed;

  MovablePoint(
      {required this.x,
      required this.y,
      required this.xSpeed,
      required this.ySpeed});

  @override
  String toString() {
    return "Moving from ($x, $y) with ($xSpeed, $ySpeed) speed";
  }

  @override
  void moveUp() {
    print("Moving from ($x, $y) with ($xSpeed, $ySpeed) speed to up");
  }

  @override
  void moveDown() {
    print("Moving from ($x, $y) with ($xSpeed, $ySpeed) speed to down");
  }

  @override
  void moveLeft() {
    print("Moving from ($x, $y) with ($xSpeed, $ySpeed) speed to left");
  }

  @override
  void moveRight() {
    print("Moving from ($x, $y) with ($xSpeed, $ySpeed) speed to right");
  }
}
