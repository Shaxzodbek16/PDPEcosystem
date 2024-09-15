// Berilgan satrda 1 dan 3 gacha uzunlikdagi raqamlarni (0-9) izlash uchun
// Dart dasturini yozing.
// "Exercises number 1, 12, 13, and 345 are important" => 1, 12, 13, 345

void main() {
  finderNumber('Exercises number 1, 12, 13, and 345 are important');
  finderNumber('No numbers');
  finderNumber('Exercises number 12, 123, 135, and 345 are important');
}

void finderNumber(String text) {
  RegExp regEx = RegExp(r'\b\d{1,3}\b');

  for (var number in regEx.allMatches(text)) {
    print(number.group(0));
  }
}
