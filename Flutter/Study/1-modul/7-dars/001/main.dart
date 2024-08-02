// 1. List elementlarining o’rtacha qiymatini topuvchi dastur yuzing for-in
// loop orqali. List numbers = [6, 25, 91, 23, 72, 9, 18, 6];
//
// 2. List list = [65, 31, 87, 5, 99, 47, 79, 105, 34, 45]; va n soni berilgan.
// Shu n soni listda bor yoki yo’qligini aniqlang. Bor bo’lsa true aks holda
// false qiymatini consolega chiqaring. For-in loopdan foydalaning va sikllar
// sonini kamaytirish uchun break kalitso’zini ishlating.
//
// 3. List list = [44, 58, 67, 80, 33, 13, 28, 37, 76, 82]; va n soni berilgan.
// Shu listdagi n - indexdagi elementi topuvchi dastur tuzing. Listni o’ziga
// tegishli methoddan foydalanmang.

void main(){
  List<int> numbers = [6, 25, 91, 23, 72, 9, 18, 6];
  int counter = 0;
  int summa = 0;
  for (int number in numbers){
    summa +=number;
    counter ++;
  }
  print("Avarage: ${summa/counter}");

  int n= 105;
  List<int> list = [65, 31, 87, 5, 99, 47, 79, 105, 34, 45];
  bool isFound = false;
  for (int item in list){
    if (item==n){
      isFound = true;
      break;
    }
  }
  if (isFound){
    print(true);
  } else print(false);

  list = [44, 58, 67, 80, 33, 13, 28, 37, 76, 82];
  n = 3;
  counter = 0;
  for (int item in list){
    if (counter==n){
      print(item);
      break;
    }
    counter ++;
  }
}