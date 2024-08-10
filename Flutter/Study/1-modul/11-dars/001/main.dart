// Berilgan mapni quyidagicha o‘zgartiring va qaytaring: Agar mapning “a”
// keyini value qiymati bo’lsa, shu qiymatni “b” keyning valuega o’zlashtiring
// va “a” keyning valuega bo’sh satrni qiymat qilib bering:
//  mapBully({"a": "candy", "b": "dirt"}) → {"a": "", "b": "candy"}
//  mapBully({"a": "candy"}) → {"a": "", "b": "candy"}
//  mapBully({"a": "candy", "b": "carrot", "c": "meh"}) →
//  {"a": "", "b": "candy", "c": "meh"}

void main(){
  print((mapBully({"a": "candy", "b": "dirt"})));  // {"a": "", "b": "candy"}
  print(mapBully({"a": "candy"})); // {"a": "", "b": "candy"}
  print(mapBully({"a": "candy", "b": "carrot", "c": "meh"})); // →  {"a": "", "b": "candy", "c": "meh"}
}

Map<String, String> mapBully(Map<String, String> map){
  map['b'] = map['a']!;
  map['a'] = '';
  return map;
}