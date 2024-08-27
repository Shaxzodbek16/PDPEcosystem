// Convertor nomli class hosil qiling va classda quyidagi
// methodlarni hosil qiling:
// • Haroratni Farengeytda darajada berganda, uni Selsiy darajaga
// o’giradigan metod yozing.
// • Aylana radiusini berganda, uning uzunligini topadigan metod yozing.
// Aylana uzunligi = Radius * 2 * 3.14;
// • Milyani kilometrga o’girib beradigan metod yozing. 1 milya = 1609.344 m
// • km ni m ga aylantiradgan metod yozing. 1km = 1000m;
// • Tezlikni km/soat da qabul qilib m/s da qaytaradigan metod yozing.
// 1m/s = 3.6km/soat

class Convertor {
  // Перевод температуры из Фаренгейта в Цельсий
  double fahrenheitToCelsius(double fahrenheit) {
    return (fahrenheit - 32) * 5 / 9;
  }

  double circumference(double radius) {
    return 2 * 3.14 * radius;
  }
  double milesToKilometers(double miles) {
    return miles * 1.609344;
  }
  double kilometersToMeters(double kilometers) {
    return kilometers * 1000;
  }
  double kmPerHourToMeterPerSecond(double kmPerHour) {
    return kmPerHour / 3.6;
  }
}

void main() {
  Convertor converter = Convertor();

  double celsius = converter.fahrenheitToCelsius(72);
  print(celsius);

  double length = converter.circumference(5);
  print(length);

  double kilometers = converter.milesToKilometers(10);
  print(kilometers);

  double meters = converter.kilometersToMeters(2);
  print(meters);

  double meterPerSecond = converter.kmPerHourToMeterPerSecond(60);
  print(meterPerSecond);
}
