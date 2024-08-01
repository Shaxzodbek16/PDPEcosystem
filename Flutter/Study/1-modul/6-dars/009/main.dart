// a) Evkilid algoritmi. a va b butun sonlari berilgan. Berilgan sonlarning
// EKUB ni aniqlovchi dastur tuzing. gcd - methodidan foydalanmasdan
// hisoblansin.
//
// b) A va B butun sonlari berilgan. Ularning orasida joylashgan butun
// sonlarni ekranga kamayish tartibida chiqaruvchi algoritm tuzing.
// Masalan: A=10, B=15 bo’lsa, natija 15 14 13 12 11 10 shaklida chiqishi kerak.


void main(){
  print(gsd_(10, 20));
  from_to(10, 15);
  10.gcd(10);
}

int gsd_(int p, int q){
  if (q==0) return 1;
  int r = p % q;
  return gsd_(q, r);
}

void from_to(int A, int B){
  for ( A; A<=B; A++){
    print(A);
  }
}