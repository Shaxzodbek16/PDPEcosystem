// Har xil shakllar (masalan, Aylana, Kvadrat, To'rtburchak) ro'yxatini qabul
// qiluvchi va barcha shakllarning umumiy maydonini qaytaruvchi Dart
// funksiyasini yarating. Har bir shaklni aniqlash va uning maydonini hisoblash
// uchun pattern matchingdan foydalaning.

abstract class Shape {
  double get area;
}

class Circle extends Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => 3.14159 * radius * radius;
}

class Square extends Shape {
  final double side;

  Square(this.side);

  @override
  double get area => side * side;
}

class Rectangle extends Shape {
  final double width, height;

  Rectangle(this.width, this.height);

  @override
  double get area => width * height;
}

double calculateTotalArea(List<Shape> shapes) {
  double totalArea = 0;
  for (var shape in shapes) {
    totalArea += shape.area;
  }
  return totalArea;
}

void main() {
  final shapes = [
    Circle(5),
    Square(4),
    Rectangle(3, 6),
  ];

  final totalArea = calculateTotalArea(shapes);
  print('Sum of area: $totalArea');
}
