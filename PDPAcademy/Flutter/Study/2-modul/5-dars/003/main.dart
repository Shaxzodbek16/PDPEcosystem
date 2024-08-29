// Butun n soni berilgan. Agar berilgan butun son 3 ga goldiqsiz bo 'linsa
// "Fizz" so’zi, 5 ga qoldiqsiz bo ‘linsa "Buzz" so’zi, agarda ham 3 ga va 5 ga
// goldiqsiz bo'linsa "FizzBuzz" so'zini son o'rniga chiqaruvchi funksiya
// tuzing. Agar berilgan son 3 ga ham 5 ga ham bo’linmasa sonni o’zini
// chiqarsin.Sonni 3 ga va 5 ga bo’linishini tekshiruvchi
// checkDevide(int n, int div) nomli funksiya tuzing va uni umumiy fizzBuzz
// funkisyaga parametr sifatida qabul qilib oling.
// Example: n = 17 => fizzBuzz(number: n, checker: checkDivide) => 17

void main(){
  final result = FizzBuzz(10, checkDivide);
  print(result);
}

bool checkDivide(int n, int div){
  if(n%div==0) return true;
  return false;
}

String FizzBuzz(int number, bool Function(int, int) checker){
  if (checker(number, 3) && checker(number, 5)) return 'FizBiz';
  if (checker(number, 3)) return 'Biz';
  if (checker(number, 5)) return 'Fizz';
  return number.toString();
}


