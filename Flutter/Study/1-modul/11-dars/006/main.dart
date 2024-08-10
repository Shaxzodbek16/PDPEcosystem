//Oziq-ovqatga mos map berilgan. Agar mapda “potato” keyi mavjud bo’lsa
// “fries” nomli key hosil qilib value iga “potato” ning value ni bering.
// Agar mapda “salad” keyi mavjud bo’lsa “spinach” nomli key hosil qilib
// value iga “salad” ning value ni bering:
//  topping3({"potato": "ketchup"}) → {"potato": "ketchup", "fries": "ketchup"}
//  topping3({"potato": "butter"}) → {"potato": "butter", "fries": "butter"}
//  topping3({"salad": "oil", "potato": "ketchup"}) →
//  {"spinach": "oil", "salad": "oil", "potato": "ketchup", "fries": "ketchup"}

void main() {
  print(topping3(
      {"potato": "ketchup"})); // → {"potato": "ketchup", "fries": "ketchup"}
  print(topping3(
      {"potato": "butter"})); // → {"potato": "butter", "fries": "butter"}
  print(topping3({
    "salad": "oil",
    "potato": "ketchup"
  })); // →   {"spinach": "oil", "salad": "oil", "potato": "ketchup", "fries": "ketchup"}
}

Map<String, String> topping3(Map<String, String> map) {
  if (map.containsKey("potato")) map['fries'] = map['potato']!;
  if (map.containsKey("salad")) map['spinach'] = map['salad']!;
  return map;
}
