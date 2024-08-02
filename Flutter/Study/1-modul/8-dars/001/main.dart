// a) Foydalanauvchi tomonidan kiritilgan son tub yoki tub son emasligini
// aniqlovchi bool toifali funksiya tuzing.
// Agar parametrda kiritilgan son tub bo’lsa true, aks holda false qaytarsin.
//
// b) Berilgan sonni teskarisini chiqaruvchi return type li funksiya tuzing.

void main(){
  print(isPrime(29));
  print(reversedNumber(10));
}

// a
bool isPrime(int number){
  for (int i = 2; i<= number~/2; i++){
    if (number % i == 0) return false;
  }
  return true;
}

// b
num reversedNumber(num number){
  return 1/number;
}

