// Foydalanuvchi so'm hisobida qanchadur miqdorda pul kiritsa unga shu puliga
// to’g’ri keladigan valyuta miqdorini aniqlovchi dastur tuzing.
// Vazifa sifatida dastur kodini yuboring

import 'dart:io';

void main(){
  print("Pulingiz miqdorini so'mda kiriting: ");
  num qiymat = double.parse(stdin.readLineSync()!);
  print("izda ${qiymat/12626.56}\$ bor (Jun 24, 01:01 UTC · Disclaimer)");
}