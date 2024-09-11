// Circle sinfini hosil qiling. Sinf radius nomli fieldiga ega bo’lsin.
// Bu sinfga tegishli obyektlarda “-” amalini bajarish uchun “-” operatorini
// yozing. Obyektlar da “-“ amali bajarilganda ularning radiuslari ayirilishi
// kerak.
class Circle {
  double radius;

  Circle(this.radius);

  double operator -(Circle other) {
    return radius - other.radius;
  }
}

void main() {
  Circle c1 = Circle(1.5);
  Circle c2 = Circle(1);

  print(c1 - c2);
}
