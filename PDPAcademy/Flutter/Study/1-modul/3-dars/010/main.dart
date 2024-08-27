// Int turida uzunligi 3 bolgan 2 ta a va b list berilgan. shu listlarni
// o’rtasidagi elementlaridan iborat yangi listni hosil qiluvchi dastur tuzing.
// Tekshirish uchun dastur kodini yuboring.
// A) ([1, 2, 3], [4, 5, 6])→ [2, 5];
// B) ([7, 7, 7], [3, 8, 0]) → [7, 8];
// C) ([5, 2, 9], [1, 4, 5]) → [2, 4]

void main(){
  List list1 = [2, 5, 2], list2 = [3, 9, 7], new_list = [];
  new_list.add(list1[1]);
  new_list.add(list2[1]);
  print(new_list);
}