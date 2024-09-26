// Sinusoid generator hosil qiling, yani n soni kiritiladi va har sekundda sinus
// qoidasi bo’yicha [-n, n] orqalida son qaytarsin. Har sekundda son o’zgarishi
// uchun burchak: pi / 12 deb olinadi.

import 'dart:math';

class SinusoidGenerator {
  final int n;
  double angle = 0;

  SinusoidGenerator(this.n);

  Stream<double> generate() async* {
    while (true) {
      yield n * sin(angle);
      angle += pi / 12;
      await Future.delayed(const Duration(seconds: 1));
    }
  }
}

void main() {
  final generator = SinusoidGenerator(5);
  generator.generate().listen((value) {
    print(value);
  });
}
