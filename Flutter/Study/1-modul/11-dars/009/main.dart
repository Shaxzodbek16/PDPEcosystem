// Agar berilgan mapda “a” va “b” keylari mavjud bo’lib, valuelari turli
// uzunlikda bo’lsa,“c” keyning value ini uzun valuega o’zgartiring.
// Agar valuelari bir hil uzunlikda bo’lsa “a” va “b” ning valuelarini
// bo’sh satrga o’zgartiring.
// mapAB4({"a": "aaa", "b": "bb", "c": "cake"}) →
// {"a": "aaa", "b": "bb", "c": "aaa"}
// mapAB4({"a": "aa", "b": "bbb", "c": "cake"}) →
// {"a": "aa", "b": "bbb", "c": "bbb"}
// mapAB4({"a": "aa", "b": "bbb"}) → {"a": "aa", "b": "bbb", "c": “bbb"}

void main() {
  print(mapAB4({"a": "aaa", "b": "bb", "c": "cake"})); // → {"a": "aaa", "b": "bb", "c": "aaa"}
  print(mapAB4({"a": "aa", "b": "bbb", "c": "cake"})); // → {"a": "aa", "b": "bbb", "c": "bbb"}
  print(mapAB4({"a": "aa", "b": "bbb"})); // → {"a": "aa", "b": "bbb", "c": “bbb"}
  print(mapAB4({"a": "aaa", "b": "bbb"})); // → {"a": "", "b": "", "c": “"}
}


Map<String, String> mapAB4(Map<String, String> map){
  if(map["a"]!.length == map["b"]!.length){
    map["a"] = '';
    map["b"] = '';
  }
  if (map["a"]!.length > map["b"]!.length){
    map["c"] = map["a"]!;
  } else map["c"] = map["b"]!;
  return map;
}