// Foydalanuvchi tomonidan kiritilgan uch xonali natural sonning
// ”chapdan o’qiganda ham, o’ngdan o’qiganda ham bir xil" ekanligini
// tekshiruvchi dastur tuzing. Tekshirish uchun dastur kodini yuboring.

void main(){
  int number = 122;
  int left, right;
  right = number % 10;
  left = number ~/ 100;
  bool result = left == right;
  print("Result: $result");
}