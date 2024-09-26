// Random sonlarni chiqaruvchi asinxron generator tuzing. Shu oqimda bir
// vaqtning o’zida 2 va 3 ga yoki 3 va 5 ga karrali sonlar kelsa bu oqim error
// yuborishi kerak.

import 'dart:math';

Stream<int> randomIntOrError() async* {
  while (true) {
    int intValue = Random().nextInt(10);
    bool con = (intValue % 6 == 0) || (intValue % 15 == 0);
    await Future.delayed(const Duration(seconds: 1));
    if (con) {
      throw Exception("Condition not match");
    }
    yield intValue;
  }
}

void main() async {
  final results = randomIntOrError();

  try {
    await for (final result in results) {
      print(result);
    }
  } catch (e) {
    print(e);
  }
}

