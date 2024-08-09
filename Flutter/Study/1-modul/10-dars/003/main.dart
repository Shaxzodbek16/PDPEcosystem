// a) a, b sonlar va list berilgan. Shu listning a indexsiga b sonini
// joylashtiring va listni konsolga chiqaring.
//
// b) List va i soni berilgan. Shu listning i - chi indexsidagi elementni
// olib tashang.


void main(){
  // a

  List<int> numbers = [10,20,30];
  int a = 3, b = 10;
  numbers.insert(a, b);
  print(numbers);

  // b
  int i = numbers.length - 1;
  numbers.removeAt(i);
  print(numbers);

}