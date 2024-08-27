// a) Satr berilgan. Satrda har 1ta uchragan ‘*’ belgisidan 1ta oldingi va
// 1ta keyingi belgilar teng bo‘lsa, true aks holatda false qaytaruvchi
// funksiya tuzing. Agar‘*’dan 1ta oldin yoki 1ta keyin belgi bo'lmasa
// e'tiborga qarab.
// sameStarChar("xy*yzz") → true
// sameStarChar("xy*zzz") → false
// sameStarChar("*xa*az") → true
//
// b) Satr berilgan. Ushbu satrni birinchi 2ta harfini qaytaruvchi funksiya
// tuzing. Agar satr uzunligi 2 dan kichik bolsa, osha satrni ozini qaytaring.
// firstTwo("Salom") → “Sa"
// firstTwo("abcdefg") → "ab"
// firstTwo("ab") → "ab"

void main(){
  // a
  print(sameStarChar("xy*yzz")); // → true
  print(sameStarChar("xy*zzz")); // → false
  print(sameStarChar("*xa*az")); // → true

  // b
  print(firstTwo("Salom"));  // → “Sa"
  print(firstTwo("abcdefg"));  // → "ab"
  print(firstTwo("ab"));  // → "ab"
}

bool sameStarChar(String str){
  for (int i = 1; i< str.length - 1; i++){
    if(str[i] == '*'){
      if (str[i - 1] == str[i + 1]){
        return true;
      }
    }
  }
  return false;
}

String firstTwo(String str){
  if (str.trim().length < 3) return str;
  return str.trim()[0] + str.trim()[1];
}