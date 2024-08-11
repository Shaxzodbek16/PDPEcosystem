// NaturalNumber nomli class tuzing. Fieldida bitta number degan o’zgaruvchisi
// bo’lsin. Bu numberga constructor orqali qiymat berilsin.
// a. Berilgan numberni musbatligini tekshiruvchi isPositive nomli getter yozing
// b. Berilgan numberni necha xonali ekanini aniqlovchi method yozing.
// c. Berilgan numberni tub yoki tub emasligini aniqlovchi method yozing.
// d. Berilgan numberni mukammal yoki mukammal son emasligini aniqlovchi
// method yozing
// e. Berilgan numberni faktorial qiymatini hisoblovchi method yozing.
// f. Berilgan numberni boshqa son bilan ekukini hisoblovchi method yozing.
// g. Berilgan numberni raqamlari yig’indisini aniqlovchi method yozing.

void main(){
  final naturalNumber1 = NaturalNumber(10);
  print(naturalNumber1.isPositive);
  print(naturalNumber1.rooms(10));
  print(naturalNumber1.isM(28));
  print(naturalNumber1.factorial(5));

}

class NaturalNumber {
  int? number;
  NaturalNumber(this.number);

  bool get isPositive{
    return number! % 2==0;
  }

  int rooms(int number){
    int count = 0, mod = 0;
    while (number > 0){
      count++;
      mod = (number % 10);
      number -=mod;
      number ~/=10;
    }
    return count;
  }
  bool isPrime(int number){
    for (int i = 2; i< number~/2 ; i++){
      if(number % i == 0) return false;
    }
    return true;
  }
  bool isM(int number){
    int total = 0;
    for (int i = 1; i < number ; i++){
      if (number%i==0) total+=i;
    }
    return number == total;
  }

  num factorial(number){
    if (number < 0) return -1;
    if (number < 1) return 1;
    return this.factorial(number-1) * number;
  }

  int ekuk(int other){
    return this.number!.gcd(other);
  }

  int totalNumber(int number){
    int total = 0, mod;
    while (number < 0){
      mod  = number % 10;
      total += mod;
      number -= mod;
      number ~/10;
    }
    return total;
  }


}
