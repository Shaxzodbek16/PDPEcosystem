// a) Butun sonlardan tashkil topgan list berilgan. O'sha listdagi eng katta
// ikkinchi elementni toping. Bunda list elementlari bir biriga teng
// emas deb oling.
//
// b) a soni va butun sonlardan tuzilgan list berilgan. Listning xohlagan
// ikkita elementlarini yig'indisi a ga teng bo'lishini aniqlang va
// ularni konsolga chiqaring.
//
// c) n ta elementdan tashkil topgan list berilgan. Listda qatnashgan
// sonlarni va ularni nechtadan qatnashganini aniqlovchi dastur tuzilsin.
// Natijada har bir son bir marta chiqarilsin.


void main(){
  // a
  List<int> numbers = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];
  numbers.sort();
  print("Second the biggest number is ${numbers[numbers.length-2]}");

  // b
  int a = 15;
  int low = 0, high = 1, max = numbers.length - 1;
  while(low +1 != max){
    if (numbers[low] + numbers[high] == a){
      print("${numbers[low]} and ${numbers[high]}");
    }

    if (high == max) {
      low++;
      high = low + 1;
    }
    high++;
  }

  // c
  for (int i = 0; i < numbers.length; i++) {
    int count = 0;
    bool alreadyCounted = false;

    for (int j = 0; j < i; j++) {
      if (numbers[i] == numbers[j]) {
        alreadyCounted = true;
        break;
      }
    }

    if (!alreadyCounted) {
      for (int k = i; k < numbers.length; k++) {
        if (numbers[i] == numbers[k]) {
          count++;
        }
      }
      print('count of ${numbers[i]} is $count');
    }
  }
}
