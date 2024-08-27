// a) N natural soni va satr berilgan. Uzunligi N ga teng bo'lgan satri
// shunday hosil qiling: agar kiritilgan satrning uzunligi N dan katta
// yoki teng bo'lsa, satrni o’zgarishsiz qoldiring; agar kiritilgan
// satrning uzunligi N dan kichik bo'lsa, yangi satr
// boshiga nuqtalarni “.” Qo’shing.
//
// b) Toq uzunlikdagi satr berilgan. Satrni o’rtasidagi 3ta harfdan iborat
// yangi satrni qaytaradigan funksiya tuzing. middleThree("Candy") → “and”
// middleThree("and") → "and" middleThree("solving") → “lvi"
//
// c) Butun sondan iborat kiritilgan str1 va str2 satrlarni arifmetik
// qo’shib qiymatni ham string toifasida qaytaradigan funksiya tuzing.
// Input: Output: add("1”, “2”) “3” add("-10”, “20”) “10”

void main(){
  // a
  print(addDots("PDP", 10));

  // b
  print(middleThree("Candy"));
  print(middleThree("and"));
  print(middleThree("solving"));

  // c
  print(add("1", "2")); // "3"
  print(add("-10", "20")); // "10"

}

String addDots(String str, int number){
  if (str.length >= number) return str;
  while (str.length <= number){
    str = '.'+ str;
  }
  return str;
}

String middleThree(String str){
  int middle = (str.length~/2);
  return str[middle-1] + str[middle] + str[middle+1];
}


String add(String str1, String str2){
  int num1 = int.parse(str1), num2 = int.parse(str2);
  return (num1+num2).toString();
}