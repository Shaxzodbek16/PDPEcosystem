// 1 dan N gacha bo’lgan natural sonlarning yig’indisini rekursiv funksiya
// yordamida hisoblang.


void main() {
  print(sumOfNaturalNumbers(9));
}

int sumOfNaturalNumbers(int n) {
  if (n <= 0) {
    return 0;
  }else {
    return n + sumOfNaturalNumbers(n - 1);
  }
}
