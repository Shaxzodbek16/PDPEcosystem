// Agar internet tezligi 750 kbayt/sekund bo'lsa 1.8 GBayt axborotni necha
// sekundda uzatish mumkinligini aniqlaydigan dastur tuzing.
// Tekshirish uchun dastur kodini yuboring.

void main(){
  num speed = 750; // kbayt/second
  double data = 1.8; // Gbayt
  num matchData = data * 1024 * 1024;
  print((matchData/speed).toInt());
}