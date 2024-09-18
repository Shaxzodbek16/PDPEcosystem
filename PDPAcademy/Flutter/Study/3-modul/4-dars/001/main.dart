// Ikkita sonni qo’shuvchi generic funksiya tuzing.

num add<T extends num>(T number1, T number2) {
  return number1 + number2;
}

void main(){
  final result = add(1, 1.2);
  print(result);
}
