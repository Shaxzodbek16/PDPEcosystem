// a) n butun soni berilgan (32 <= n <= 126). Unikodi n ga teng bo'lgan belgini
// consolga chiqaruvchi dastur tuzing.
//
// b) Satr berilgan. Satrdagi katta lotin harflari sonini aniqlovchi funksiya
// tuzilsin.
//
// c) Berilgan sartni katta lotin harflarini kichikga, kichiklarini katta
// harflarga aylantiruvchi funksiya tuzilsin. Example: “FLuTTeR” => “flUttEr”


void main(){
  //a
  int unicode = 120;
  if (!(32<=unicode && unicode <= 126)) return;
  print(String.fromCharCode(unicode));

  //b
  String text = "Assalomu alaykum";
  int counter = 0;
  for (int i = 0; i< text.length; i++){
    if (65 <= text.codeUnitAt(i) && text.codeUnitAt(i) <= 90) counter++;
  }
  print(counter);

  //c
  text = "FLuTTeR";
  String res = '';
  for (int i = 0; i< text.length; i++){
    if (65 <= text.codeUnitAt(i) && text.codeUnitAt(i) <= 90) {
      res += String.fromCharCode(text.codeUnitAt(i) + 32);
    } else{
      res += String.fromCharCode(text.codeUnitAt(i) - 32);
    }
  }
  print(res);

}