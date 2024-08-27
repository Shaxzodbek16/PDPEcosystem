// a) Listdagi eng katta elementni toping va konsolga chiqaring.
//
// b) Listdagi eng kichik elementni toping va konsolga chiqaring.
//
// c) List elementlarini o'rtacha qiymatlarini hisoblang va konsolga chiqaring.
//
// d) n, list berilgan. Shu list boshiga n ni joylashtiring va konsolga
// chiqaring.


void main(){
  List<int> numbers = [10,20,30];
  numbers.sort();
  // a
  print(numbers.last);

  // b
  print(numbers.first);

  // c
  print(numbers.reduce((a, b) => a + b)~/numbers.length);

  // d
  int n = 10;
  numbers.insert(0, n);
  print(numbers);
}