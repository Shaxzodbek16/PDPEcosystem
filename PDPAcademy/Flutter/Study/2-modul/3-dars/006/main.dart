// 2 ta, 3ta .. n ta sonlar uchun EKUB qiymatni qaytaruvchi optional
// positional parametrli funksiya tuzing (n <= 5)


void main() {
  print(CustomGcd(12, 18)); // Output: 6
  print(CustomGcd(12, 18, 24)); // Output: 6
  print(CustomGcd(12, 18, 24, 30)); // Output: 6
  print(CustomGcd(12, 18, 24, 30, 36)); // Output: 6
}

int CustomGcd(int a, int b, [int? c, int? d, int? e]){
  int answer = a.gcd(b);
  if (c != null) answer = answer.gcd(c);
  if (d != null) answer = answer.gcd(d);
  if (e != null) answer = answer.gcd(e);
  return answer;
}
