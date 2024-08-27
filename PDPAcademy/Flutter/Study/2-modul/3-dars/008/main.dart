// n-Fibonachi sonini rekursiv funksiya yordamida aniqlovchi dastur tuzing. Bunda: f(0) = 0, f(1) = 1, f(n) = f(n-1)+f(n-2), n>=2.


void main() {
  print(fibonacci(3));
}

int fibonacci(int n) {
  if (n <= 2) {
    return 1;
  }else {
    return fibonacci(n-1) + fibonacci(n-2);
  }
}
