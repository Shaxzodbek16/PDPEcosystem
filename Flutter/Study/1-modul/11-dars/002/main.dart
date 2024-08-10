// Berilgan mapni quyidagicha o'zgartiring va qaytaring: agar map da “a” key
// mavjud bo’lsa “b” keyga “a” keyning value ini bering. Agar “b” key mavjud
// bo’lmasa uni hosil qiling. Har qanday holatda ham “c” key mavjud bo’lsa uni
// map dan o’chiring, mapning qolgan qismi o’zgarishsiz qolsin:
//  mapShare({"a": "aaa", "b": "bbb", "c": "ccc"}) → {"a": "aaa", "b": "aaa"}
//  mapShare({"b": "xyz", "c": "ccc"}) → {"b": "xyz"}
//  mapShare({"a": "aaa", "c": "meh", "d": "salom"}) →
//  {"a": "aaa", "b": "aaa", "d": “salom"}

void main() {
  print(mapShare(
      {"a": "aaa", "b": "bbb", "c": "ccc"})); // → {"a": "aaa", "b": "aaa"}
  print(mapShare({"b": "xyz", "c": "ccc"})); // → {"b": "xyz"}
  print(mapShare({
    "a": "aaa",
    "c": "meh",
    "d": "salom"
  })); // -> {"a": "aaa", "b": "aaa", "d": “salom"}
}

Map<String, String> mapShare(Map<String, String> map) {
  if (map.containsKey('a')) {
    map['b'] = map['a']!; // Safe to use ! here since we checked for 'a'
  }
  if (map.containsKey('c')) {
    map.remove('c');
  }
  return map;
}
