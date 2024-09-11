// x va y fieldga ega bo’lgan Point sinfini hosil qiling. Hamda
// Point turida begin va end nomli fieldga ega bo’lgan Line
// sinfini yarating. Bu sinfda Object klassidan meros bo’lib
// o’tadigan methodlarni override qiling.

class Point {
  double x, y;

  Point(this.x, this.y);

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is Point) {
      return runtimeType == other.runtimeType && x == other.x && y == other.y;
    }
    return false;
  }
}

class Line {
  Point begin, end;

  Line(this.begin, this.end);

  @override
  String toString() {
    return '(${begin.x}, ${begin.x}) (${end.x}, ${end.x})';
  }

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is Line) {
      return runtimeType == other.runtimeType &&
          begin == other.begin &&
          end == other.end;
    }
    return false;
  }
}
