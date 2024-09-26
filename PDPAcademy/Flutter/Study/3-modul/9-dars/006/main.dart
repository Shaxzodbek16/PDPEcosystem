// Kiritilgan songacha bo’lgan fibonachi sonlarini chiqaruvchi asinxron generator
// yarating. Bu generator oqimga sonlarni uzatishda sonni juft toqligi e’tiborga
// olinsin. Sonlar juft bo’lsa 3 - sekund oraliqda uzatsin, toq bo’lsa 1 sekund oraliq
// muddatda uzatsin.

Stream<int> fibonacci(int n) async* {
  int first = 0, second = 1;
  while( n !=0){
    int fibonacciNumber = first + second;
    if(fibonacciNumber % 2 ==0) {
      await Future.delayed(Duration(seconds: 3));
      yield fibonacciNumber;
    }else {
      await Future.delayed(Duration(seconds: 1));
      yield fibonacciNumber;
    }
    first = second;
    second = fibonacciNumber;
    n--;
  }
}


void main() async {
  final numbers = fibonacci(10);
  await for(final number in numbers){
    print(number);
  }
}
