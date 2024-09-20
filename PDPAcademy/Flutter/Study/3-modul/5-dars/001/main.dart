// String classi uchun joriy string obyekti pangram yoki pangram emasligini
// tekshiradigan isPangram nomli extension method yozing.
// Pangram - bu ingliz alifbosining har bir harfi kamida bir ishlatilgan jumla.
// Faqat lotin harflardan iborat  qatorli jumla berilgan deb hisoblanadi, agar
// jumla pangram bo'lsa, true, aks  holda false qaytaring.
// Input: sentence = thequickbrownfoxjumpsoverthelazydog"
// Output: true
// Explanation: jumlada ingliz alifbosining har bir harfidan kamida bittasi mavjud.
// Input: sentence = "leetcode"
//  Output: false

extension Pangram on String {
  bool isPangram() {
    Set<String> letters = {};
    for (int i = 0; i < this.length; i++) {
      letters.add(this[i]);
    }
    return letters.length == 26;
  }
}

void main() {
  String text1 = "thequickbrownfoxjumpsoverthelazydog";
  String text2 = "leetcode";
  print(text1.isPangram());
  print(text2.isPangram());
}
