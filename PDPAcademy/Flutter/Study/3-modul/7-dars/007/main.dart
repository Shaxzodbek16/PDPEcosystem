// "Password" ga oid keltirilgan misoldan foydalanib, huddi shu kabi
// foydalanuvchining telefon raqami uchun tekshiruvni amalga oshiring.

class PhoneNumberValidation implements Exception {
  final String message;

  PhoneNumberValidation([this.message = "Invalid phone number"]);
}

bool validatePhoneNumber(String phoneNumber) {
  String phoneRegex = r'^(?:[+0]9[0-9]{10,12})|(?:[0-9]{9,11})$';
  if (phoneRegex.isEmpty) {
    throw PhoneNumberValidation();
  }

  phoneRegex = phoneNumber.replaceAll(RegExp(r'[^0-9]'), '');

  final match = RegExp(phoneRegex).hasMatch(phoneNumber);

  if (match) {
    return true;
  }
  throw PhoneNumberValidation();
}
