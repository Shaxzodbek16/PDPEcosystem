// S satr berilgan. Uning boshidan 3 ta belgini ekranga chiqaruvchi dastur
// tuzing. Agar console dan uzunligi 3 dan kam satr kiritilsa o'sha satrni
// 3 ta bo'lgunicha "@" belgisi bilan to'ldirib ekranga chigaring.
// Masalan: "salom" -> "sal", “va” -> "va@", "a" -> “a@a"

void main(){
  print(fillWithAt("salom"));
  print(fillWithAt("va"));
  print(fillWithAt("a"));
}

String fillWithAt(String text){
  if(text.length >= 3) return text.substring(0, 3);
  return text.padRight(3, '@');
}