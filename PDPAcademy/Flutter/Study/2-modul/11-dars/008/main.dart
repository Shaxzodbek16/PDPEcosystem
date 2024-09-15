// “a” dan keyin har qanday harf bo‘lgan, “b” bilan tugaydigan satrga mos
// keladigan dastur yozing. "aabbbbd" => false, ”aabAbbbc" => false,
// ” accddbbjjjb" => true

void main() {
  RegExp regEx = RegExp(r"^a.*b$");

  print(regEx.hasMatch('aabbbbd'));
  print(regEx.hasMatch('aabAbbbc'));
  print(regEx.hasMatch('accddbbjjjb'));
}
