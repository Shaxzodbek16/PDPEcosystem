// a) List berilgan. Shu listni teskarisini(elementlari teskari tartibda
// joylashgan) yangi listga ko'chirib o'tkazing va konsolga chiqaring.
//
// b) n va list berilgan. Shu listda nechta n soni borligini topib konsolga
// chiqaring.

void main(){
  // a
  List<int> elements = [1, 2, 3, 4, 5, 6];
  List<int> reverseElements = [];
  for(int element in elements){
    reverseElements.insert(0, element);
  }
  print(reverseElements);

  int n = 4, counter = 0;
  for(int element in elements){
    if (n == element) counter++;
  }
  print(counter);
}