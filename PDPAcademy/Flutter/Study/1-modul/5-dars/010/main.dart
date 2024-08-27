// Yil berilgan (musbat butun son). Berilgan yilni kabisa yoki kabisa bolmagan
// yiligni tekshiradigan dastur tuzing hamda berilgan yilda nechta kun
// borligini aniqlansin. Kabisa yilida 366 kun bor, kabisa bo'lmagan yilda 365
// kun bor. Kabisa yil deb 4 ga karrali yillarga aytiladi. Lekin 100 ga karrali
// yillar ichida faqat 400 ga karrali bo'lganlari kabisa yil hisoblanadi.
// Masalan 300, 1300 va 1900 kabisa yili emas. 1200 va 2000 kabisa yili.

void main() {
  int year1=200;
  if (year1 > 99 && year1 % 400 == 0) {
    print("Bu yil kabisa yil yilda 366 kun bor");
  } else if (year1 < 100 && year1 % 4 == 0) {
    print("Bu yil kabisa yil bu yilda 366 kun bor");
  } else {
    print("Bu yil kabisa yili emas 365 kun bor");
  }
}