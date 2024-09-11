// x, y, radius, deltaX va deltaY nomli double toifali fieldga ega bo’lgan
// Ball sinfini hosil qiling. Bu sinf da instance ni ixtiyoriy koordinataga
// ko’chish holatini ifodalovchi move, hamda x yoki y koordinatasini
// akslantirish imkonini beruvchi reflectHorizontal va reflectVertical
// nomli methodlari bo’lsin. Sinfda toString methodini override qiling
// hamda object equality ni ta’minlang. Bu yerda deltaX va deltaY -
// har bir ko’chishda qancha uzunlikga siljiganini ifodalovchi hisoblanadi.
class Ball {
  double x, y, deltaX = 0, deltaY = 0;

  Ball._(this.x, this.y, this.deltaX, this.deltaY);

  factory Ball(double x, y, deltaX, deltaY) {
    return Ball._(x, y, deltaX, deltaY);
  }

  @override
  String toString() {
    return '($x, $y)';
  }

  @override
  int get hashCode => this.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is Ball) {
      return runtimeType == other.runtimeType &&
          x == other.x &&
          y == other.y &&
          deltaX == other.deltaX &&
          deltaY == other.deltaY;
    }
    return false;
  }

  static Ball move(Ball f, Ball s) {
    return Ball(f.x - s.x, f.y - s.y, f.deltaX - s.deltaX, f.deltaY - s.deltaY);
  }
}


