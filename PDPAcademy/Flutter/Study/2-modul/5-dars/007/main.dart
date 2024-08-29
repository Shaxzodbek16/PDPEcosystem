// n sonining raqamlar yig'indisini takrorlanish operatoridan foydalanmagan
// holda hisoblovchi int turidagi digitSum(n) rekursiv funksiyasi tuzilsin.
// Shu funksiya yordamida berilgan butun sonning ragamlari yig’indisi topilsin.

void main(){
  print(digitSum(100));
}

int digitSum(int n){
  if (n==0) return 0;
  return n % 10 + digitSum((n - (n % 10)) ~/ 10);
}