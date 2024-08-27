// No’ldan farqli a, b, c solar berilgan. Agar ixtiyoriy 2 tasi juft
// bo'lsa 1 ni konsolga chiqaring. Agar ixtiyoriy 2 tasi toq bo'lsa
// 2 ni konsolga chiqaring. Qolgan holatlarda 0 ni konsolga chiqaring.
// Bu misolni optional postional funksiya orqali isoblang.

import 'dart:io';

void main(){
  stdout.write(mixOdd(10, 20, 30));
}

int mixOdd(int a, int b, [int? c ]){
  if (c!=null){
    int res = (a%2) + (b%2) + (c%2);
    if (res < 1) return 1;
    return 2;
  }
  int res = (a%2) + (b%2);
  if (res ==0) return 1;
  if (res ==2) return 2;
  return 0;
}