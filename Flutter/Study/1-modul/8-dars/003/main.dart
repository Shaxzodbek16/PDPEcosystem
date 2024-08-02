// N natural soni parametr sifatida qabul qilib. 1 dan N gacha bo’lgan tub
// sonlarni ekranga chiqaruvchi void typeli funksiya tuzing.

void main(){
  primeNumbers(1000);
}

void primeNumbers(int number){
  for (int i=2; i<=number; i++){
    bool isPrime = true;
    for (int j = 2; j< i; j++){
      if (i % j == 0) isPrime = false;
    }
    if (isPrime) print(i);
  }
}