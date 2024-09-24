// To'liq ismni ifodalovchi recordni qabul qiluvchi Dart funksiyasini yozing (ism,
// otasining ismi, familiya) va pattern yordamida ismdan har bir komponentni
// alohida ajratib chiqarish va chop etish uchun foydalaning.

void extractName((String fName, String midName, String lName) record){
  final (fName, midName, lName) = record;
  print("$fName, $midName, $lName");
}
