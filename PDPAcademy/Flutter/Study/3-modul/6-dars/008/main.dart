// Shape sinfini yaratib, unga calculatePerimeter metodini qo'shing.
// Bu calculatePerimeter metodini Rectangle, Square, va Circle kabi
// turli subklasslarda amalga oshiring.

abstract class Shape {
  num calculatePerimeter();
}

class Rectangle extends Shape {
  num a, b;

  Rectangle(this.a, this.b);

  @override
  num calculatePerimeter() {
    return 2 * (a + b);
  }
}

class Circle extends Shape {
  num radius;

  Circle(this.radius);

  @override
  num calculatePerimeter() {
    return 2 * 3.14 * radius;
  }
}

class Triangle extends Shape {
  num a, b, c;

  Triangle(this.a, this.b, this.c);

  @override
  num calculatePerimeter() {
    return a + b + c;
  }
}

void main() {
  List<Shape> shapes = [Rectangle(1, 2), Circle(6), Triangle(3, 4, 5)];
  for (Shape shape in shapes) {
    print(shape.calculatePerimeter());
  }
}
