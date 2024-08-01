// a soni berilgan. a sonini n chi darajasini hisoblaydigan dastur yozing va
// hosil bo'lgan sonni konsolga chiqaring.
// Namuna:
// Berilgan: a=2, n=6 Natija: 64
// Berilgan a=3, n=4 Natija: 81
// Maslahat: Berilgan sonni 5chi darajasini hisoblash uchun o'sha sonni 5
// marta o'ziga ko'paytiramiz. Ya'ni deylik 2 soni berildi uni 5chi darajasi
// 2*2*2*2*2 = 32 bo'ladi. Bunda for 5 marta aylanishi kerak va har gal biz
// 2ga ko'paytirib ketishimiz kerak. Demak berilgan sonni n marta o'ziga
// ko'paytirsak o'sha sonni n-chi darajasi kelib chiqadi.


void main(){
  int number = 3, power = 4;
  int result = 1;
  while (power != 0){
    result *= number;
    power -=1;
  }
  print(result);
}
