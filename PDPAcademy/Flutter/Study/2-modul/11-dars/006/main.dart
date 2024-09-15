// Satrda faqat ma'lum belgilar to'plami mavjudligini tekshirish uchun dastur
// yozing (bu holda a-z, A-Z va 0-9).

void main(){
  RegExp regEx = RegExp(r"[a-zA-Z0-9]");
  print(regEx.hasMatch('aaa'));
  print(regEx.hasMatch('bbb'));
  print(regEx.hasMatch('abc123'));
  print(regEx.hasMatch('123'));
}
