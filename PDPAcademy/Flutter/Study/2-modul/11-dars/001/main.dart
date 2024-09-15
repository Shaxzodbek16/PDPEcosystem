// MathOperation operation nomli sinf hosil qiling, u operator nomli fieldga
// ega bo’lsin. Sinfdan obyekt hosil qilganda konstruktor orqali operatorga
// qiymat bering(“+”, “-“, “*”, “/“ kabi). Bu sinfni obyektini callable
// obyektga aylantiring. Obyektga funksiya kabi murojaat qilganda parametriga
// ikkita son qabul qilsin. Hamda konstruktor orqali qabul qilgan operatori
// bo’yicha shu ikkita son bilan amal bajarib natijani qaytarib bersin.

void main() {
  final operator1 = MathOperation('+');
  print(operator1(10, 20));
}

class MathOperation {
  String operator;

  MathOperation(this.operator);

  num add(num number1, num number2) => number1 + number2;

  num sub(num number1, num number2) => number1 - number2;

  num multiply(num number1, num number2) => number1 * number2;

  num divide(num number1, num number2) {
    if (number1 == 0) {
      return double.infinity;
    }
    return number1 / number2;
  }

  num call(num number1, num number2) {
    switch (this.operator) {
      case '+':
        return add(number1, number2);
      case '-':
        return sub(number1, number2);
      case '*':
        return multiply(number1, number2);
      case '/':
        return multiply(number1, number2);
      case _:
        return double.infinity;
    }
  }
}
