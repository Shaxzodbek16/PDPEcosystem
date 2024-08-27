// Satr berilgan. Satrdagi raqamlar sonini aniqlovchi funksiya tuzilsin.
// Funksiya named parametr orqali argumentni talab qilib olsin.

void main(){
  print(countNumbers(text: "t4ex2t1"));
}

int countNumbers({required String text}){
  // 49-57
  int counter = 0;
  for(int i =0; i< text.length; i++){
    int unitCode = text[i].codeUnitAt(0);
    if( unitCode>=49 && unitCode<=57 ) counter++;
  }
  return counter;
}