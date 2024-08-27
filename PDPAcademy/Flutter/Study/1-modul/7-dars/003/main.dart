// a) n soni berilgan. Quyidagi yig'indini hisoblovchi dastur yozing.
// (1 + 1/2 + 1/3 + 1/4 ..... 1/n ).
// b) n butun soni berilgan (n > 0). Quyidagi ko'paytmani hisoblovchi dastur
// tuzilsin. S = 1.1 * 1.2 * 1.3 * … (n ta ko’pavuvchi)
//
// c) n butun soni berilgan (n > 0). Quyidagi yig'indini hisoblovchi programma
// tuzilsin. S = 1.1 - 1.2 + 1.3 - ... ; (n ta go'shiluvchi, ishoralar almashib
// keladi. Shart operatoridan foydalanmang)
//
// d) n butun soni berilgan (n > 0). Shu sonning kvadratini quyidagi formula
// asosida hisoblovchi dastur tuzilsin. n^2 = 1 + 3 + 5 + … + (2*n - 1);
// Maslahat: har bir qo'shiluvchidan keyin natijani ekranga chiqarib boring.
// Natijada ekranda 1 dan n gacha bo'lgan sonlar kvadrati chigariladi.

void main(){
  //a
  int n = 10;
  num sum_a = 0;
  for(int i = 1; i<=n; i++){
    sum_a += (1/i);
  }
  print(sum_a);

  //b
   n = 10;
   double sum_b = 1;
   double mul = 1.1;
   for (int i = 1; i<=n; i++){
     sum_b *= mul;
     mul +=0.1;
   }
   print(sum_b);

   //c
  /// not solved
  // d
  int sum_d = 0;
  for(int i = 1, j=1; i<=n; i+=2 , j++){
    sum_d +=i;
    print("$j ning kvadrati: $sum_d");
  }

}
