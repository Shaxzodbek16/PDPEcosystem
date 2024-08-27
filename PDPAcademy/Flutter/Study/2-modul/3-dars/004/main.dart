// Dekart koordinata tekisligida Ox va Oy o’qlarida yotmaydigan nuqtaning
// koordinatalari x va y berilgan. Shu nuqta tekislikning qaysi choragida
// joylashganini aniqlovchi dastur tuzing. Bu misolni default qiymat bilan
// named parametrli funksiyadan foydalanib hisoblang.

import 'dart:io';

void main(){
  stdout.write(quarterFinder(x: 10, y: 20));
}

int quarterFinder({num x = 1, num y = 2}){
  if (x > 0){
    if (y > 0) return 1;
    if (y < 0) return 4;
  }
  if (x < 0){
    if (y > 0) return 2;
    if (y < 0) return 3;
  }
  return -1;
}