// A va B sonlari berilgan (A > B). Qoldiqli bo’lish operatorini ishlatmasdan A
// ni B ga bo’lgandagi qoldiqni toping. Tekshirish uchun dastur kodini yuboring.

void main(){
  int A=40, B=19;
  int mod =A - (B * (A~/B));
  print("$A % $B = $mod");
}
