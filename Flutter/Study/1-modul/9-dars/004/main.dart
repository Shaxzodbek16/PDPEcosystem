// a) Kiritilgan satrni teskari tartibda o’giruvchi return typeli funksiya
// tuzilsin.
//
// b) Butun musbat sonni ifodalovchi satr berilgan. Shu son raqamlari
// yig'indisini chiqaruvchi funksiya tuzilsin.


void main(){
  // a
  print(stringReverse("hello")); // olleh
  print(intSum("12345678910")); // 45
  // b
}

String stringReverse( String str){
  String result = '';
  if (str.trim()=='') return '';
  for(int i = str.length - 1; i >= 0 ; i--){
    result += str[i];
  }
  return result;
}

int intSum(String str){
  int sum = 0;
  int l=0, h = str.length -1;
  while (l <= h){
    if (l==h) {
      sum += int.parse(str[l]);
      break;
    }
    sum += int.parse(str[l]);
    sum += int.parse(str[h]);
    l++; h--;
  }
  return sum;

  // time O(n)
  // space O(1)
}
