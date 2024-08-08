// a) Bo’sh bo’lmagan satr berilgan. Ushbu satrlarni 1- harflarini hisobga
// olmasdan, satrlarni qo’shib natijani qaytaruvchi funksiya tuzing.
// nonStart("Hello", "There") → “ellohere”
// nonStart("java", "code") →“avaode”
// nonStart(“shotl", "java") → “hotava"
//
// b) Str satr berilgan. Shu satrdagi har “PDP” so’zidan keyin “Academy” ni
// qo’shib qaytaruvchi funksiya tuzing. Agar “PDP” bo’lmasa satrni o’zi qaytsin.
//
// c) Str satr berilgan. str satrda “pdp” so’zi nechanchi indexda uchrashini
// aniqlab qiymat sifatida qaytaruvchi funksiya tuzing. Agar so’z
// topilmasa “-1” natija qaytsin.

void main(){
  // a
  print(nonStart("Hello", "There"));  //  → “ellohere”
  print(nonStart("java", "code"));  //  →“avaode”
  print(nonStart("shotl", "java"));  //  → “hotava"

  // b
  print(addAcademy("Hello, PDP, PDP"));

  //c
  print(indexOfText("Hello, pdp, PDP"));

}

String nonStart(String strStart, strEnd){
  String result = '';
  for(int i = 1; i< strStart.length; i++){
    result+=strStart[i];
  }
  for(int i = 1; i< strEnd.length; i++){
    result+=strEnd[i];
  }
  return result;
}

String addAcademy(String str){
  return str.replaceAll("PDP", "PDP Academy");
  }


int indexOfText(String str){
  return str.indexOf("pdp");
}