// Oziq-ovqatga mos map berilgan. Mapda agar “ice cream” keyi mavjud bo’lsa
// uning value ini “cherry” ga o’zgartiring, mapda har qanday holatda ham
// “bread” keyi va u keyga mos “butter” value bo’lishi kerak.
//  topping1({"ice cream": "peanuts"}) →
//  {"bread": "butter", "ice cream": "cherry"}
//  topping1({}) → {"bread": "butter"}
//  topping1({"pancake": "syrup"}) → {"bread": "butter", "pancake": "syrup"}

void main(){

  print(topping1({"ice cream": "peanuts"})); // →  {"bread": "butter", "ice cream": "cherry"}
  print(topping1({})); // → {"bread": "butter"}
  print(topping1({"pancake": "syrup"})); // → {"bread": "butter", "pancake": "syrup"}

}

Map<String, String> topping1(Map<String, String> map){
  map['bread'] = 'butter';
  if(map.containsKey('ice cream')) map['ice cream'] = 'cherry';
  return map;
}