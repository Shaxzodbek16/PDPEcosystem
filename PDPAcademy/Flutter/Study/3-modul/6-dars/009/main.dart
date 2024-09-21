// Shape sinfini yaratib, unga calculateArea() metodini qo'shing.
// Circle va Rectangle subklasslarini yaratib, ularning
// calculateArea() metodini mos ravishda aylana va to'rtburchak
// maydonini hisoblaydigan qilib override qiling. Shape sinfida
// printArea(Shape shape) metodini qo'shing, bu metod calculateArea()
// metodini chaqirib natijani chop etadi. Circle sinfida, calculateArea()
// metodini covariant keywordi bilan belgilang. Circle va Rectangle
// sinflaridan obyektlar yarating va ularni printArea() metodiga o'tkazing.
// To'g'ri natija chiqishini tasdiqlang.

import 'dart:math';

abstract class Shape {
  double calculateArea();

  void printArea(Shape shape);
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * pi * radius;
  }

  @override
  void printArea(covariant Circle circle) {
    print(this.calculateArea());
  }
}

class Rectangle extends Shape {
  double width, height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  void printArea(covariant Rectangle rectangle) {
    print(this.calculateArea());
  }
}

void main() {
  Rectangle rectangle = Rectangle(10, 20);
  Circle circle = Circle(10);
  circle.printArea(circle);
  rectangle.printArea(rectangle);
}
