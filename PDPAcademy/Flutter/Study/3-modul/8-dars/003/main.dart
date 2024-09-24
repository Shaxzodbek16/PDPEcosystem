// Telefon raqami va email manzili uchun ixtiyoriy fieldlar bilan foydalanuvchi
// profili uchun recordni belgilang. Yangi foydalanuvchi profilini yaratish va
// profildagi tafsilotlarni chop etuvchi, ixtiyoriy fieldlar null bo'lishi mumkin
// bo'lgan holatlar bilan shug'ullanadigan funksiyani yozing.


class UserProfile {
  String firstName;
  String lastName;
  String contactInfo;

  UserProfile({
    required this.firstName,
    required this.lastName,
    required this.contactInfo,
  });

  void printDetails() {
    print('Name: ${firstName} ${lastName}');
    print('Contact Info: $contactInfo');
  }
}

void main() {
  UserProfile user = UserProfile(
    firstName: 'John',
    lastName: 'Doe',
    contactInfo: 'johndoe@example.com',
  );

  user.printDetails();
}