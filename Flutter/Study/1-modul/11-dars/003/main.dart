// Berilgan mapni quyidagicha o'zgartiring va qaytaring: map da “a” yoki “b”
// keylar bo’lishi ham, bo’lmasligi ham mumkin. Agar berilgan mapda bir vaqtda
// “a” va “b” keylar mavjud bo’lsa “ab” - key hosil qiling va uning
// value i “a” va “b” keylarning valuelarini birlashtirilganiga teng bo’lsin:
//  mapAB({"a": "Hi", "b": "There"}) →
//  {"a": "Hi", "ab": "HiThere", "b": "There"}
//  mapAB({"a": "Hi"}) → {"a": "Hi"} mapAB({"b": "There"}) → {"b": "There"}

void main() {
  print(mapAB({
    "a": "Hi",
    "b": "There",
  })); // -> {"a": "Hi", "ab": "HiThere", "b": "There"}
  print(mapAB({"a": "Hi"})); // → {"a": "Hi"}
  print(mapAB({"b": "There"})); // → {"b": "There"}
}

Map<String, String> mapAB(Map<String, String> map) {
  if (map.containsKey("a") && map.containsKey("b")) {
    map["ab"] = map["a"]! + map["b"]!;
  }
  return map;
}
