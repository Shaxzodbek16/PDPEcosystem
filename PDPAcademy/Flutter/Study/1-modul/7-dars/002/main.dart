// a) Bir kg konfetning narxi berilgan (haqiqiy son). 1.2, 1.4, ..., 2 kg
// konfetni narxini chiqaruvchi dastur tuzilsin.
//
// b)  a va b sonlari berilgan. (a<b) a dan b gacha 4 ga karrali sonlarni
// ekranga chiqaruvchi dastur tuzing. (a va b kirmasin)
//
// c) 1 dan 100 gacha bo‘lgan toq sonlar ichidan 3 ga bo’linadigan ammo 5 ga
// bo‘linmaydigan sonlarning yig’indisini hisoblovchi dastur tuzing.
//
// d)  Berilgan songacha bo’lgan fibonachi sonlarini console ga chiqaruvchi
// dastur tuzing.
//
// e) Barcha 2 xonali sonlar ichida kamida 1 ta raqami 8 bo’lgan barcha
// sonlarni ekranga chiqaruvchi dastur tuzing.
//
// f) n va k butun sonlari berilgan. Faqat ayirish, qo’shish hamda loopdan
// foydalanib, n sonini k ga bo’lgandagi qoldiq va butun qismini ekranga
// chiqaruvchi dastur tuzilsin.


void main(){

  // a
  num amount = 10000;
  for (double i= 12; i<=20; i+=2){
    print("${i/10} kg --- ${amount*i/10}");
  }


  // b
  int a =10, b = 21;
  for (a; a <b; a++){
    if (a%4==0){
      print(a);
    }
  }


  // c
  num summa = 0;
  for (int i = 1; i<=100; i++){
    if (i % 3 ==0 && i % 5 !=0){
      summa+=i;
    }
  }
  print(summa);


  // d
  int given_number = 10;
  for (int i = 1; i<=given_number; i++){
    print(fibonacci(i));
  }


// e)

for (int i = 18; i<= 98; i++){
  if (i%10==8 || i ~/10==8){
    print(i);
  }
}


// f)
  int n =10, k= 7;
  while(true){
    if (k > n){
      print(n);
      break;
    }
   n -= k;
  }
}

int fibonacci(int n){
  if (n < 2) return 1;
  return fibonacci(n-1) + fibonacci(n-2);
}