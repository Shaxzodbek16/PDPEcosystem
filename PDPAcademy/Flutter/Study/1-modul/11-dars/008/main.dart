// Agar berilgan mapda “a” key mavjud bo’lib, “b” mavjud bo’lmasa yoki aksincha
// bo’lsa, mavjudining valuesi orqali mavjud bo’lmaganini mapda hosil qiling:
// mapAB3({"a": "aaa", "c": "cake"}) → {"a": "aaa", "b": "aaa", "c": "cake"}
// mapAB3({"b": "bbb", "c": "cake"}) → {"a": "bbb", "b": "bbb", "c": "cake"}
// mapAB3({"a": "aaa", "b": "bbb", "c": "cake"}) → {"a": "aaa", "b": "bbb", "c": “cake"}

void main(){
  print(mapAB3({"a": "aaa", "c": "cake"})); // → {"a": "aaa", "b": "aaa", "c": "cake"}
  print(mapAB3({"b": "bbb", "c": "cake"})); // → {"a": "bbb", "b": "bbb", "c": "cake"}
  print(mapAB3({"a": "aaa", "b": "bbb", "c": "cake"})); // → {"a": "aaa", "b": "bbb", "c": “cake"}
}

Map<String, String> mapAB3(Map<String, String> map){
  if (!map.containsKey("a")) map['a'] = map['b']!;
  if (!map.containsKey("b")) map['a'] = map['a']!;
  return map;
}