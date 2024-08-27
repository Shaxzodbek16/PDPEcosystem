// a sonini natural n darajasini qaytaradigan pow(a, n) nomli funksiyatuzing.
// Matematik kutubxona funksiyalaridan foydalanilmasin.

void main(){
  print(pow(2,3)); // 8
}

num pow(num number, int power){
  num sum = 1;
  for (int i = 1; i<=power; i++){
    sum *= number;
  }
  return sum;
}