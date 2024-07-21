// Kun boshidan boshlab N sekund o’tdi.
// Kun boshidan boshlab qancha soat, minut, sekund
// o’tganini hisoblovchi dastur tuzing.
// Masalan: N=3752 -> soat = 1, minut = 2, sekund = 32
void main(){
  int seconds = 3752;
  int hour=0, minut=0;

  minut = seconds ~/60;
  seconds = seconds % 60;
  hour = minut ~/ 60;
  minut = minut % 60;
  print("$hour : $minut : $seconds");


}