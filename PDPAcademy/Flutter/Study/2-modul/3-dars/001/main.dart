// a, b, c sonlari berilgan. Agar sonlar o'sish tartibida joylashgan
// bo'lsa 1 ni konsolga chigaring. Agar kamayish tartibda bo'lsa 2
// konsolga chigaring. Agar eng kattasi b bo'sa b ni konsolga chiqaring.
// ]Agar ular teng bo'lsa 5 ni konsolga chiqaring. Qolgan holatlarda 0 ni
// ekranga chiqaring. Shu misolni required named parametrli funksiya
// orqali hisoblang.

import 'dart:io';

void main(){
  stdout.write(order(a: 10, b: 20, c: 30));
}
int order({required a, required b, required c}){
  if (a== b && b == c && a==c) return 5;
  if (b > a && b > c) return b;
  if (a <= b && b<= c) return 1;
  if (a >= b && b >= c) return 2;
  return 0;
}