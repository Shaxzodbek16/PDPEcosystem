// Berilgan mapda “a” va “b” keylari mavjud bo’lib ikki sining value lari bir
// birga teng bo’lsa, “a” va “b” larni valuelari bilan mapdan o’chiring:
//  mapAB2({"a": "aaa", "b": "aaa", "c": "cake"}) → {"c": "cake"}
//  mapAB2({"a": "aaa", "b": "bbb"}) → {"a": "aaa", "b": "bbb"}
//  mapAB2({"a": "aaa", "b": "bbb", "c": "aaa"}) →
//  {"a": "aaa", "b": "bbb", "c": "aaa"}


void main(){
   print(mapAB2({"a": "aaa", "b": "aaa", "c": "cake"})); // → {"c": "cake"}
   print(mapAB2({"a": "aaa", "b": "bbb"})); // → {"a": "aaa", "b": "bbb"}
   print(mapAB2({"a": "aaa", "b": "bbb", "c": "aaa"})); // → {"a": "aaa", "b": "bbb", "c": "aaa"}
}

Map<String, String> mapAB2(Map<String, String> map) {
  if (map["a"]==map["b"]) {
    map.remove("a");
    map.remove("b");
  }
  return map;
}


