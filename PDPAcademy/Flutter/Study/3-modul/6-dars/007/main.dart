// Shape sinfini yaratib, unga draw metodini qo'shing. Bu draw metodini
// Rectangle, Circle, va Triangle kabi turli subklasslarda amalga oshiring.

abstract class Shape {
  void draw();
}

class Rectangle extends Shape {
  @override
  void draw() {
    print("$runtimeType is being drawn...");
  }
}

class Circle extends Shape {
  @override
  void draw() {
    print("$runtimeType is being drawn...");
  }
}

class Triangle extends Shape {
  @override
  void draw() {
    print("$runtimeType is being drawn...");
  }
}

void main() {
  List<Shape> shapes = [Rectangle(), Circle(), Triangle()];
  for (Shape shape in shapes) {
    shape.draw();
  }
}
