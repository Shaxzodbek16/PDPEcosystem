// n soni berilgan. Berilgan son palindrome ekanligini aniqlang.
// Agar bo'lsa true bo'lmasa false chiqaring. Masalan: n = 12321 bunda chap
// tomondan va o'ng tomondan o'qisa ham bir hil bo'lishi kerak.
//
// Namuna:
// Berilgan: a=12321 Natija: true
// Berilgan: a=57855 Natija: false
// Berilgan: a 8402048 Natija: true
// Maslahat: Berilgan sonni oldin teskarisini toping va shu teskarisi bilan
// sonni o'zini solishtiring. Agar ular teng bo'lsa demak bu sonnig teskarisi.
// Yuqoridagi 1 - 9 gacha bo’lgan tasklarni ham for, ham while, ham do-while
// orqali dasturini tuzing. Quyidagi tasklarni misolga mos loopni tanlab
// hisoblang!


void main(){
  int number=121, reversed_number=0;
  int mod = 0, keep_number=number;
  while (number != 0) {
    mod = number % 10;
    reversed_number = reversed_number * 10 + mod;
    number -= mod;
    number ~/= 10;
  }
  if (reversed_number==keep_number) print(true);
  else print(false);
}