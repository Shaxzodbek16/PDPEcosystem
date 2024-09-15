//  Faqat bosh va kichik harflar, raqamlar va pastki chiziqdan iborat qatorga
//  moslikni tekshiruvchi Dart dasturini yozing.

void main() {
  RegExp regEx = RegExp(r"^[A-Za-z1-9_]*$", multiLine: true);

  print(regEx.hasMatch('aabbbbd_'));
  print(regEx.hasMatch('aab123Abbbc'));
  print(regEx.hasMatch('accddbbjjjb!'));
}
