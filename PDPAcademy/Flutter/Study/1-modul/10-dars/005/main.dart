// a) 2 ta list berilgan. Shu ikkita listdagi o'xshash elementlarni
// ekranga chiqaring.
//
// b) Butun sonlardan iborat list berilgan.Shu listdagi o'xshash elementlarni
// olib tashang. Example list: [1,3,4,1,5,3], output: [1,3,4,5]
//
// c) Berilgan listni kamayish tartibida tartiblang, sort methoddan
// foydalanmagan holatda.

void main() {
  // a
  List<int> numbers1 = [1, 2, 3, 4, 5];
  List<int> numbers2 = [3, 4, 5, 6, 7];
  print(findCommonElements(numbers1, numbers2));

  // b
  List<int> numbers = [1, 3, 4, 1, 5, 3];
  List<int> uniqueNumbers = removeDuplicates(numbers);
  print(uniqueNumbers);

  // c
  List<int> sortNumbers = [3, 1, 4, 1, 5, 9, 2, 6, 5];
  bubbleSort(sortNumbers); // sort logic
  print(numbers);
}

List findCommonElements(List<int> list1, List<int> list2) {
  List theSameElements = [];
  for (int element1 in list1) {
    for (int element2 in list2) {
      if (element1 == element2) {
        theSameElements.add(element1);
        break;
      }
    }
  }
  return theSameElements;
}

List<int> removeDuplicates(List<int> list) {
  List<int> uniqueList = [];
  for (int element in list) {
    if (!uniqueList.contains(element)) {
      uniqueList.add(element);
    }
  }
  return uniqueList;
}

void bubbleSort(List<int> list){
  int low = 0, high = list.length -1;
  int? temp=null;
  while (low <= high){
    if (list[low] > list[high]){
      temp = list[high];
      list[low] = list[high];
      list[high] = temp;
    }
    low++; high --;
  }
}