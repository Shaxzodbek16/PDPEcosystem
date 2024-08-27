// a) N natural soni berilgan. 1 dan N gacha bo’lgan tub sonlarni ekranga
// chiqaruvchi dastur tuzing.
//
// b) Lokatr dunyoning bir tomoniga qaratilgan(“s”-shimol, “j”-janub,
// “q”-sharq, "g"-g'arb) va uchta raqamli kamanda: 0-o'ngga buril,
// 1 chapga buril, 2-burilish 180°. C - lakatring boshlang’ich holati
// va K1, K2 - kamandalar berilgan. Berilgan kamanda bajarilgandan
// keying lakatr holatini aniqlovchi dastur tuzilsin.
//
// c) Sanani bildiruvchi ikkita butun son berilgan D (kun) va M (ov). (Kabisa
// bo'lmagan yil sanasi kiritiladi). Berilgan sanani ifodalovchi dastur
// tuzilsin. Kabisa yilida 366 kun, kabisa bo'lmagan yilda 365 kun bor bo'ladi.

import 'dart:io';
void main(){
  // a
  int n = 1000;
  for (int i = 2; i<=n; i++){
    bool is_tub = true;
    for(int j=2; j<=i~/2; j++){
      if(i%j==0){
        is_tub = false;
        break;
      }
    }
    if (is_tub) print(i);
  }
  // b
  int direction1 = 0;
  int direction2 = 0;
  while (true) {
    stdout.write(
        "Qaysi tomonda joylashgansiz (('s'-shimol, 'j'-janub, 'q'-sharq, 'g'-g'arb)): ");
    String tomon = stdin.readLineSync()!;
    if (tomon == "s" || tomon == "j" || tomon == "q" || tomon == "g");
    stdout.write("1-buyruqni kiriting(0-o'ngga, 1-chapga, 2-180 gradus): ");
    direction1 = int.parse(stdin.readLineSync()!);
    stdout.write("2-buyruqni kiriting(0-o'ngga, 1-chapga, 2-180 gradus): ");
    direction2 = int.parse(stdin.readLineSync()!);
    if (tomon == "s") {
      if ((direction1 == 0 && direction2 == 1) ||
          (direction1 == 1 && direction2 == 0) ||
          (direction1 == 0 && direction2 == 0))
        print("Shimol");
      else if ((direction1 == 0 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 0))
        print("G'arb");
      else if ((direction1 == 1 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 1))
        print("Sharq");
      else if ((direction1 == 1 && direction2 == 1) ||
          (direction1 == 2 && direction2 == 2)) print("Janub");
    } else if (tomon == "j") {
      if ((direction1 == 0 && direction2 == 1) ||
          (direction1 == 1 && direction2 == 0) ||
          (direction2 == 0 && direction1 == 0))
        print("Janub");
      else if ((direction1 == 0 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 0))
        print("G'arb");
      else if ((direction1 == 1 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 1)) print("Sharq");
    } else if (tomon == "q") {
      if ((direction1 == 0 && direction2 == 1) ||
          (direction1 == 1 && direction2 == 0) ||
          (direction2 == 0 && direction1 == 0))
        print("Sharq");
      else if ((direction1 == 0 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 0))
        print("Shimol");
      else if ((direction1 == 1 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 1)) print("Janub");
    } else if (tomon == "g") {
      if ((direction1 == 0 && direction2 == 1) ||
          (direction1 == 1 && direction2 == 0) ||
          (direction2 == 0 && direction1 == 0))
        print("G'arb");
      else if ((direction1 == 0 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 0))
        print("Janub");
      else if ((direction1 == 1 && direction2 == 2) ||
          (direction1 == 2 && direction2 == 1)) print("Shimol");
    }
    break;
  }

  // c
  int D = 15;
  int M = 8;

  List<int> daysInMonth = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31];

  if (M < 1 || M > 12) {
    print('Noto\'g\'ri oy kiritildi');
    return;
  }

  if (D < 1 || D > daysInMonth[M - 1]) {
    print('Noto\'g\'ri kun kiritildi');
    return;
  }

  print('Berilgan sana: $D-$M');
}