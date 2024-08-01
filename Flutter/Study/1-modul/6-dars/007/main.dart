// n soni berilgan. Shu sonni teskarisini toping va konsolga chiqaring.
// Masalan: n = 12345 uning teskarisi 54321;
// Namuna:
// Berilgan: a=12345 Natija: 54321
// Berilgan a=6821 Natija: 1286
// Maslahat: Sonni 10 ga qoldiqli bo'lsak oxirgi raqamini olsak bo'ladi.
// Shu raqamni 10 ga ko'paytirib unga undan oldingi raqamni qo'shib
// ketaverasiz. Sonni 10 ga bo'lsangiz u kamayib ketadi
void main(){
  int number=12345, reversed_number=0;
  int mod = 0;
  while (number != 0) {
    mod = number % 10;
    reversed_number = reversed_number * 10 + mod;
    number -= mod;
    number ~/= 10;
  }
  print(reversed_number);
}
