// String turi uchun isValidEmail nomli extension method yozing.
// U metod emailni yaroqli yoki yaroqsizligini tekshirsin.

extension EmailValidation on String {
  bool isValidEmail() {
    final email = RegExp(r"^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$");
    return email.hasMatch(this);
  }
}
