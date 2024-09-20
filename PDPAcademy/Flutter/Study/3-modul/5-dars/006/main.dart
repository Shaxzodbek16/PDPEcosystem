// double turi celsiusToFarhenheit extension getter yozing. Selsiy dan farangetyga o’tkazsin

extension on double{
  double get celsiusToFahrenheit {
    return (this * 9 / 5) + 32;
  }
}

void main() {
  double celsius = 30.0;
  double fahrenheit = celsius.celsiusToFahrenheit;
  print('$celsius Celsius\n$fahrenheit Fahrenheit.');
}