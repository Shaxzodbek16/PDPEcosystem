// [1,2,3,4] deb yozmoqchi bo`ldik lekin xató yozib [1,2,2,4] deb yozdik.
// Bu yerda xató ketgan raqamni topadigan kod yozing.
// Va bu masalani SET dan foydalib yeching. [1,2,2,4] => 2 chiqishi kerak.
// (3 bolishi kerak edi 2 deb xató yozdik).
//
// Tekshirish maqsadida dastur kodini yuboring.

void main(){
  print(findMissingNumber([1,2,2,4]));
}

int findMissingNumber(List<int> list){
  Set<int> set= {};
  for(int i=0; i<list.length; i++){
    if(set.contains(list[i])){
      return list[i];
    }
    set.add(list[i]);
  }
  return -1;
}