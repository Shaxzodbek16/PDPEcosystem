//N ta butun sondan tashlik topgan o’zgarmas list berilgan.
// Listdagi toq sonlar ko’paytmasidan juft sonlar
// yig’indisini ayirib natijani chiqaruvchi dastur tuzing.

void main(){
  const List<int> list = [1,2,3,4,5,6,7,8]; // 105 - 20 = 85
  print(customMinus(list));
}

int customMinus(List<int> list) {
  int odd=1, even=0;
  for(int i = 0; i< list.length; i++){
    int element = list[i];
    if(element.isEven){
      even+=element;
    }
    if(element.isOdd){
      odd*=element;
    }
  }
  return odd-even;
}