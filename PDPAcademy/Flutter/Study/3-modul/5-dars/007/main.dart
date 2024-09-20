// double turi uchun extension type hosil qiling unda farhenheitToCelsius
// nomli getter yozing. Farangeyt dan Selsiyga o’tkazsin.

extension FahrenheitExtension on double {
  double get fahrenheitToCelsius {
    return (this - 32) * 5 / 9;
  }
}

void main() {
  double celsius = 30.0;
  double fahrenheit = celsius.fahrenheitToCelsius;
  print('$celsius Celsius\n$fahrenheit Fahrenheit.');
}