// Berilgan 3 ta sonni o’sish tartibida chiqaring.
// Bu misolni default qiymat bilan positional parametrli
// funksiyadan foydalanib hisoblang.

import 'dart:io';

void main(){
  sortUp(4,8,3);
}

void sortUp(int a, int b, int c){
  int max = a;
  int min = a;
  if (b > max) max = b;
  if (c > max) max = c;
  if (b < min) min = b;
  if (c < min) min = c;
  print("$max, ${a+b+c-max-min}, $min");
}