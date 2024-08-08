// a) S satr berilgan. Agar satrning uzunligi toq bo'Isa, o'rtadagi bitta
// belgisidan, agar juft bo'lsa, o'rtadagi 2 ta belgisidan iborat satrni
// ajratib oling.
// Masalan:
// 1) s="hovli" =› javob: result="v"
// 2) s="antiga" =› javob: result =“ti"
//
// b) str satri va c belgisi berilgan. str satrining har bir belgisidan keyin
// c belgisini joylashtirib yangi satr hosil qiluvchi dastur tuzing.
// Masalan: str=”hello”, c=’a’ bo’lsa, natijaviy satr “haealalaoa” kabi bo’ladi.


void main(){
  //a
  print(middleOfString("hovli")); // v
  print(middleOfString("antiqa")); // ti
  print(newString("hello", 'a')); // haealalaoa
}

String middleOfString(String str){
  int len = str.length;
  if (len ~/2 != len / 2 ){
    return str[len~/2];
  }
  return str[len~/2 -1] + str[len~/2];
}

String newString(String str, String char){
  String result = '';
  for (int i =0 ; i< str.length; i++){
    result += (str[i] + char);
  }
  return result;
}