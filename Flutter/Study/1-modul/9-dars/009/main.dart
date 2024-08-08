// a) Berilgan satrni palindrom so‘z ekanligini tekshiruvchi funksiya tuzing.
// Ya‘ni o'ngdan ham chapdan ham o'qilgandagi holati bir xil bo‘ladigan so'z
// "palindrome" so‘z bo‘ladi. “palindrome” ga misol: “absba”, “non”.
//
// b) Berilgan belgini katta yoki kichik harf ekanligini aniqlaydigan funksiya
// tuzing. Agar belgi harf bo’lmasa “harf emas”, katta harf bo’lsa “katta harf”,
// kichik harf bo’lsa “kichik harf” nomli natija qaytsin. isLetter(‘H’)
// “Katta harf”, isLetter(‘h’) “Kichik harf”, isLetter(‘5’) “Harf emas”

void main(){
  // a
  print(isPalindrome("absba"));
  print(isPalindrome("non"));
  print(isPalindrome("palindrome"));

  // b
  print(isLetter("H"));
  print(isLetter("h"));
  print(isLetter("5"));

}

bool isPalindrome(String str){
  int low=0, high = str.length -1;
  while (low <= high){
    if (str[low] != str[high]) return false;
    low++;
    high --;
  }
  return true;
}

String isLetter(String char){
  int char_number =  char.codeUnitAt(0);
  if (65 <= char_number && char_number <= 90) return 'Katta harf';
  if (97 <= char_number && char_number <= 122) return 'Kichik harf';
  return 'harf emas';
}