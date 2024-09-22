// n butun son berilgan bo'lsa, n! da qatnashgan oxirgi no’llar
// sonini qaytaring!
// E'tibor bering: n! = n * (n - 1) * (n - 2) * ... * 3 * 2 * 1.
//
// Vazifa: funksiya tuzing: int trailingZeroes(int n) {}
// Input: n = 3 Output: 0
// Explanation: 3! = 6, oxirida no'l yo'q.
// Input: n = 5 Output: 1
// Explanation: 5! = 120, oxirida bitta no'l.
// Input: n = 0 Output: 0

int trailingZeroes(int n) {
  int number = factorial(n);
  int counter = 0;
  while (number % 10 == 0) {
    counter++;
    number ~/= 10;
  }
  return counter;
}

int factorial(int n) {
  if (n == 0) return 1;
  int sum = 1;
  while (n != 1) {
    sum *= n;
    n--;
  }
  print(sum);
  return sum;
}

void main() {
  print(trailingZeroes(3));
  print(trailingZeroes(5));
  print(trailingZeroes(0));
  print(trailingZeroes(20));
}
