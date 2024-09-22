// Ikki satr s va t berilgan, ularning izomorfligini aniqlang.
//
// Ikki satr s va t izomorf bo'ladi, agar s dagi belgilar t ni olish uchun almashtirilsa.
// Belgining barcha holatlari belgilar tartibini saqlab qolgan holda boshqa belgi bilan
// almashtirilishi kerak. Ikkita belgi bir xil belgiga moslasha olmaydi, yani birinchi
// satrda turgan i - indexdagi belgi, ikkinchi satrdagi i - indexda turgan belgi
// bilangina o’rin almasha oladi.
// Checker nomli klass tuzing. Uni s va t fieldlari bo’lsin va s va t ga factory
// construktor orqali qiymat bering. isIsomorphic nomli bool toifali method tuzing va
// u method s va t larning izomorfligini aniqlasin.
// Input: s = "egg", t = “add”. Output: true
// Input: s = "foo", t = “bar”. Output: false
// Input: s = "paper", t = “title”. Output: true



bool isIsomorphic(String s, String t) {
  if (s.length != t.length) return false;

  Map<String, String> mapping = {};

  for (int i = 0; i < s.length; i++) {
    String charS = s[i];
    String charT = t[i];

    if (mapping.containsKey(charS)) {
      if (mapping[charS] != charT) {
        return false;
      }
    } else {
      if (mapping.values.contains(charT)) {
        return false;
      }
      mapping[charS] = charT;
    }
  }

  return true;
}

void main(){
  print(isIsomorphic("egg", "add"));
  print(isIsomorphic("foo", "bar"));
  print(isIsomorphic("paper", "title"));
}
