// Perrin Number. Berilgan N sonigacha bo`lgan barcha Perrin raqamlarni
// yig`indisini topadigan Class va Funksiya yarating.
// PerrinNumber number = PerrinNumber(N);
// number.sumPerrins();
// Son Perrin deyiladi qachonki quyidagi tenglik o`rinli bo`lsa:
// P(n) = P(n-2) + P(n-3); n > 2 uchun
// Boshlang`ich qiymatlari: P(0) = 3, P(1) = 0, P(2) = 2.

void main(){
  final number = PerrinNumber(3);
  print(number.sumPerrinNumber());
}

class PerrinNumber{
  int number;

  PerrinNumber(this.number);

  int sumPerrinNumber(){
    int total = 0;

    int P(int number1){
      if(number1 ==0) return 3;
      if(number1 ==1) return 0;
      if(number1 ==2) return 2;
      return P(number1 - 2) + P(number1 - 3);
    }

   for(int i=0; i<= number; i++){
     total += P(i);
   }
   return total;
  }
}
