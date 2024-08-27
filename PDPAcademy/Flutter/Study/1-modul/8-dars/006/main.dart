// Perfect Number. Agar berilgan son o`zining musbat bo`luvchilarining
// yig`indisiga teng bo`lsa bu son “Perfect Number” deyiladi.
// Berilgan son “Perfect Number” bo`lsa true bo`lmasa false qiymat
// chiqaradigan funksiya yarating. checkPerfectNumber(28);
// true => 28 = 1 + 2 + 4 + 7 + 14

void main(){
  print(checkPerfectNumber(28));
}

bool checkPerfectNumber(int number){
  int sum = 0;
  for (int i = 1; i<number; i++){
    if (number % i == 0) sum +=i;
  }
  return sum==number;
}