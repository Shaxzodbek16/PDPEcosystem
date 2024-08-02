// Berilgan butun sonning palindrome ekanligini aniqlaydigan funksiya tuzing.
// isPalindrome( 121) → true, isPalindrome( 123) → false,
// isPalindrome ( -121) →false.

void main(){
  print(isPalindrome(121));
  print(isPalindrome(123));
  print(isPalindrome(-121));
}

bool isPalindrome(int number){
  if (number < 0) return false;
  String number_string = number.toString();
  int i =0, j = number_string.length -1;
  while (i < j) {
    if (number_string[i] != number_string[j]) return false;
    i +=1;
    j-=1;
  }
  return true;
}