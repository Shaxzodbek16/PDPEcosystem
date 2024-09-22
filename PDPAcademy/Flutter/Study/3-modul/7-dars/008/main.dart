// "Password" ga oid keltirilgan misoldan foydalanib, huddi shu kabi
// foydalanuvchining emaili uchun tekshiruvni amalga oshiring.

class EmailValidation implements Exception {
  final String message;

  EmailValidation([this.message = "Invalid email address"]);
}

bool validateEmail(String email) {
  String emailRegex = r"^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$";
  if (emailRegex.isEmpty) {
    throw EmailValidation();
  }

  final match = RegExp(emailRegex).hasMatch(email);

  if (match) {
    return true;
  }
  throw EmailValidation();
}
