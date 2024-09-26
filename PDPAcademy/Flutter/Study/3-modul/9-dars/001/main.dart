// toRadix() funksiya yozing, u musbat butun sonni string shaklida va u sonning
// sanoq sistemasini va qaysi sanoq sistemasiga o’tkazmoqchi ekanligingizni
// parametr orqali qabul qilsin va natijani String ko’rinishida qaytarsin.
// String toRadix(String number, int inRadix, int outRadix)
// Example:
// Enter a number and radix: A1B2
// Enter the input radix: 16
// Enter the output radix: 2
// "A1B2" in radix 16 is "1010000110110010" in radix 2.

String toRadix(String number, int inRadix, int outRadix) {
  return int.parse(number, radix: inRadix).toRadixString(outRadix);
}

void main() {
  final result = toRadix("A1B2", 16, 2);
  print(result);
}
