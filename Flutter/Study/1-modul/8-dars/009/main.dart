// Berilgan n sonigacha bo’lgan barcha kvadrat sonlarni ekranga chiqaruvchi
// method yarating.Masalan: printSquares(30) methodi ekranga 1, 4, 9, 16, 25
// sonlarni ekranga chiqarsin.

void main(){
  printSquares(30);
}

void printSquares(int number){
  for (int i = 1; i<=number; i++){
    print(i*i);
  }
}