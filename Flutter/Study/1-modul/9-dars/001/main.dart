// 1. Berilgan indexdagi belgini Unicode ini console ga chiqaring.
// Namuna: str = "Dasturlash"
// index = 0 -> D -> 68
// index = 3 -> t -> 116
//
// 2. Berilgan indexdan oldingi belgini Unicode ini console ga chiqaring.
// Namuna: str = "Dasturlash"
// index = 1 -> D -> 68
// index = 4 -> t -> 116

void main(){
  // 1
  String str = "Dasturlash";
  int index = 0;
  print(str.codeUnitAt(index));

  //2
  index -=1;
  if (index < 0) index = str.length -1; // self rule
  print(str.codeUnitAt(index));
}