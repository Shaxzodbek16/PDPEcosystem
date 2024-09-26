// Quyidagi n gacha bo`lgan juft sonlar yig`indisini va toq sonlar yig`indisini
// topadigan sumOfEvens va sumOfOdds Future funksiyalarni to`liq yarating.
// void main() async {
// int n = 10000;
// int evens = await sumOfEvens(n);
// print(evens);
// int odds = await sumOfOdds(n);
// print(odds);
// }

Future<int> sumOfEvens(int n) async {
  int sum = 0;
  while (n != 0) {
    if (n % 2 == 0) {
      sum += n;
    }
    n--;
  }
  return sum;
}

Future<int> sumOfOdds(int n) async {
  int sum = 0;
  while (n != 1) {
    if (n % 2 == 0) {
      sum += n;
    }
    n--;
  }
  return sum;
}

void main() async {
  int n = 10000;
  int evens = await sumOfEvens(n);
  print(evens);
  int odds = await sumOfOdds(n);
  print(odds);
}
