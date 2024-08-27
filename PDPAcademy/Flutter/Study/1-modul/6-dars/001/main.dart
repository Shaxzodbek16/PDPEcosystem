// a) Sikl 1 dan N gacha bolgan sonlarni chiqaradi. Agar sikl 13 ga teng bolsa
// 13 sonini tashlab ketsin.
// b) N natural soni berilgan. 1 dan N gacha bo’lgan butun sonlarning
// kvadratlarining yig’indisini hisoblovchi dastur tuzing.


void main(){
  one_to_n(20); // 1,2,3...12,14,15, ... N
  print("\n");
  print(squard_sum(4)); // 16 + 9 + 4 + 1 = 30
}

void one_to_n(int N){

  for (int i=1; i<=N; i++){
    if (i==13) continue;
    print(i);
  }
}

int squard_sum(int N){
  int sum = 0;
  for (int i =1; i<=N; i++){
    sum += i*i;
  }
  return sum;
}