// Bizda bir nechta quyon bor va har bir quyonning ikkita katta qulog'i bor.
// Biz barcha quyonlar bo'ylab quloqlarning umumiy sonini rekursiv ravishda
// hisoblamoqchimiz.
// bunnyEars(0) → 0
// bunnyEars(1) → 2
// bunnyEars(2) → 4

void main(){
  print(bunnyEars(0));
  print(bunnyEars(1));
  print(bunnyEars(2));
}

int bunnyEars(int bunnies){
  if (bunnies==0) return 0;
  return bunnyEars(bunnies -1) + 2;
}