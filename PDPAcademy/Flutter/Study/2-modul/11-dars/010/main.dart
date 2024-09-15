// Kiritilgan satr IP(v4) manzilimi yoki yo’qligini tekshiruvchi dastur tuzing.

void main() {
  RegExp regEx =
      RegExp(r"^([1-9]{1,3})\.([1-9]{1,3})\.([1-9]{1,3})\.([1-9]{1,3})$");

  print(regEx.hasMatch('172.234.842.126'));
  print(regEx.hasMatch('172.24.842.126'));
  print(regEx.hasMatch('172.234.842.1'));
  print(regEx.hasMatch('172.234.8421'));
}
