// a va b satrlar berilgan. Ularning har biridan galma-gal bittadan
// olingan belgilardan yangi satr hosil qiluvchi dastur tuzing.
// Masalan:
// 1) a="abc", b="xyz" bo’lsa, natijaviy satr "axbycz" bo’ladi;
// 2) a="Hi", b="There" bo’lsa, natijaviy satr "HTihere" bo’ladi;

void main(){
  print(mixTwoStrings("abc", "xyz"));
  print(mixTwoStrings("Hi", "There"));
}

String mixTwoStrings(String S1, String S2){
  int len1 = S1.length -1, len2 = S2.length -1;
  int minLength;
  len1 < len2 ? minLength = len1: minLength = len2;
  int i= 0, j = 0;
  String answer = '';
  bool takeTurn = true;
  while(i <= minLength && j<=minLength){
    if(takeTurn){
      answer+=S1[i];
      i++;
      takeTurn = false;
      continue;
    }
    answer+=S2[j];
    j++;
    takeTurn = true;
  }
  while(i <= len1){
    answer+=S1[i];
    i++;
  }
  while(j<= len2){
    answer+=S2[j];
    j++;
  }
  return answer;
}