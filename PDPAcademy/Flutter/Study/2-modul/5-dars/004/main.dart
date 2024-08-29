// Berilgan son Armstrong bo`lsa true, aks holsa false qaytaradigan
// funksiya yozing. Son Armstrong deyiladi quyidagi tenglik o`rinli bo`lsa:
// abcd… = pow(a,n)+ pow(b,n)+ pow(c,n)+ pow(d,n)…
// isArmstrong(int n) {/* your code */}
// Masalan: 153 – Armstrong sondir. Sababi 3 xonali son bo`lgani
// uchun har bir raqamini 3 martadan o`ziga ko`paytirib
// qo`shganda yana sonni o`zi hosil bo`ladi.
// 153 = 1*1*1 + 5*5*5 + 3*3*3
// Input : 153
// Output : true
// Input : 120
// Output : false
// 120 is not a Armstrong number.
// 1*1*1 + 2*2*2 + 0*0*0 = 9

import 'dart:math';

void main(){
  print(isArmstrong(153));
  print(isArmstrong(120));
}

bool isArmstrong(int number){
  int mod = 0, checkerSum = 0, numberSaver = number;
  while (number!=0){
    mod = number %10;
    checkerSum += (pow(mod, 3)).toInt();
    number-=mod;
    number ~/=10;
  }
  return numberSaver == checkerSum;
}