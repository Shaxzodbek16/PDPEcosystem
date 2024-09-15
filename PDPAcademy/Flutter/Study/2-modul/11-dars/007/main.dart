// Bitta katta harfdan keyin kichik harflar ketma-ketligini topish
// uchun dastur yozing. AaBbGg => true, Dart => true, dart => false,
// DART => false, aA => false, Aa => true

void main() {
  RegExp regEx = RegExp(r"([A-Z]{1})([a-z]+)");

  print(regEx.hasMatch('AaBbGg'));
  print(regEx.hasMatch('Dart'));
  print(regEx.hasMatch('dart'));
  print(regEx.hasMatch('DART'));
  print(regEx.hasMatch('aA'));
  print(regEx.hasMatch('Aa'));
}
