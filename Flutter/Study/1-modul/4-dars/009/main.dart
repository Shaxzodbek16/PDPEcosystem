// 3 ta sonni qiymatini bir biri bilan almashtiring. Qo’shimcha o’zgaruvchisiz.
// Tekshirish uchun dastur kodini yuboring.

void main(){
  int A=10, B = 20, C = 30;

  A = A + B + C;
  B = A - B - C; // A
  C = A - B - C; // B
  A = A - B - C; // C
  print("A: $A, B: $B, C: $C");
}