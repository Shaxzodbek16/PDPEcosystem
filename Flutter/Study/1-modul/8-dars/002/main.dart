// a) Kiritilgan a va b sonni EKUB va EKUK ini hisoblovchi ikkita return
// type li funksiya tuzing.
//
// b) Berilgan sonni faktorialini hisoblovchi return typeli funksiya tuzing.

void main(){
  print(a1(12, 6));
  print(a1(12, 6));
  print(fac(5));

}

// a - 1
int a1(int num1, int num2){
  return num1.gcd(num2);
}

// a - 2
int a2(int num1, int num2){
  return num1*num2 ~/ a1(num1, num2);
}

// b
int fac(int number){
  if (number  < 0) return 0;
  if (number == 0 ) return 1;
  int sum = 1;
  for(int i = 1; i<=number; i++){
    sum *=i;
  }
  return sum;
}