// a) text1 va text2 satrlari berilgan. Agar text2 satri text1 satrida bo'lsa
// true, aks holda false chiqaruvchi dastur tuzing.
//
// b) Str satrini tarkibida ‘A’ harfi necha marta borligini aniqlovchi dastur
// tuzing
//
// c) text1 va text2 satrlari berilgan. text2 satrini text1 satrida
// takrorlanishlar sonini chigaruvchi dastur tuzing.


void main(){
  // a
  String text1 = 'Hello world', text2 = 'llo';
  print(text1.contains(text2));

  // b
  String Str = "ASSALOMU ALAYKUM";
  int count = 0;
  for(int i = 0; i< Str.length; i++){
    if (Str[i]=="A"){
      count++;
    }
  }
  print(count);
  // c
  /// not solved yet

}