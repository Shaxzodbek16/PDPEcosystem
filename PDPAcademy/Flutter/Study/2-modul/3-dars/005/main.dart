// Qiymati [1; 9999] bo‘lgan x butun soni berilgan. Bu sonning qiymatiga mos
// ravishda quyidagi satrlarni chop eting: ”to‘rt xonali juft son”, “ikki
// xonali toq son” va hokazo. Bu misolni default qiymat bilan named parametrli
// funksiyadan foydalanib hisoblang.


void main(){
  print(numberToString(number: 10000));
}


String numberToString({int? number}) {
  if (number == null) return 'You missed to enter a number';
  if (number > 1000 || number < 1) return 'Out of rooms or negative value';

  final isEven = number % 2 == 0;
  final isEvenString = isEven ? 'even number' : 'odd number';

  final digitCount = number.toString().length;
  switch (digitCount) {
    case 1:
      return 'One room $isEvenString';
    case 2:
      return 'Two room $isEvenString';
    case 3:
      return 'Three room $isEvenString';
    case 4:
      return 'Four room $isEvenString';
    default:
      return 'Unexpected number of digits';
  }
}