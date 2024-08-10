// Oziq-ovqatga mos map berilgan. Agar mapda “ice cream” keyi mavjud bo’lsa
// “yogurt” nomli keyning value iga “ice cream” ning valueni bering. Agar
// mapda “spinach” keyi mavjud bo’lsa uning value ini “nuts” ga o’zgartiring.
//  topping2({"ice cream": "cherry"}) →
//  {"yogurt": "cherry", "ice cream": "cherry"}
//  topping2({"spinach": "dirt", "ice cream": "cherry"}) →
//  {"yogurt": "cherry", "spinach": "nuts", "ice cream": "cherry"}
//  topping2({"yogurt": "salt"}) → {"yogurt": "salt"}

void main(){
 print(topping2({"ice cream": "cherry"})); // →{"yogurt": "cherry", "ice cream": "cherry"}
 print(topping2({"spinach": "dirt", "ice cream": "cherry"}));  // →{"yogurt": "cherry", "spinach": "nuts", "ice cream": "cherry"}
 print(topping2({"yogurt": "salt"})); // → {"yogurt": "salt"}
}
Map<String, String> topping2(Map<String, String> map){
  if (map.containsKey("ice cream")) map['yogurd'] = map['ice cream']!;
  if (map.containsKey('spinach')) map['spinach'] = 'nuts';
  return map;
}
