// Int turidagi elementlardan iborat list berilgan. Listda qatnashgan
// no’llarni hammasini listning oxiriga ko’chiruvchi dastur tuzing.
// Bunda no’l bo’lmagan o’zgaruvchilarning bir biriga nisbatan turgan
// taribi o’zgarmasligi kerak. Boshqa listdan foydalanmasdan berilgan
// listni ustida amal bajarib natija olinishi talab etiladi.
// Input: nums = [0,1,0,3,12]
// Output: [1,3,12,0,0]
// Input: nums = [0]
// Output: [0]

void main(){
  print(moveZeroes([0,1,0,3,12]));
}

List<int> moveZeroes(List<int> list){
  int number=0;
  for(int i=0; i< list.length;i++ ){
    if(list[i] !=0){
      list[number] = list[i];
      list[i] = 0;
      number++;
    }
  }
  return list;
}