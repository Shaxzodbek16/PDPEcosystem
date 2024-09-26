// Quyidagi yig`indini topadigan qilib Future funksiyani yozing.
// S = (1*1) + (2*2) + (3*3) + (4*4) + (5*5) + … + (n*n)
// void main() {
// int n = 100;
// fetchSumma(n).then((sum) {
// print(sum);
// });
// }
// Future<double> fetchSumma(int n) async {
// double sum = 0;
// // bu yerda summani hisoblang
// return sum;
// }

Future<double> fetchSumma(int n) async {
  double sum = 0;
  while (n != 0) {
    sum += (n * n);
    n--;
  }
  return sum;
}

void main() {
  int n = 100;
  fetchSumma(n).then((sum) {
    print(sum);
  });
}
