// n ta elementdan tashkil topgan list berilgan. List elementlarini
// quyidagicha chiqaruvchi dastur tuzilsin.
// list[0], list[1], list[n-1], list[n-2], list[3], list[4], list[n-3], list[n-4], …

void main(){
  print(doubleElementTaker([1,2,3,4,5,6, 7]));
}

List<dynamic> doubleElementTaker(List<dynamic> list){
  int elements = list.length - 1;
  int low = 0, high = elements;
  List<dynamic> new_list = [];
  while (low < high){
    new_list.add(list[low]);
    low++;
    if(high < low) break;
    new_list.add(list[low]);
    low++;
    if(high < low) break;
    new_list.add(list[high]);
    high--;
    if(high < low) break;
    new_list.add(list[high]);
    high--;
  }
  return new_list;
}