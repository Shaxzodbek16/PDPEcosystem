// Gap - bosh va keyingi bo'shliqlarsiz bitta bo'shliq bilan
// ajratilgan so'zlar ro'yxati. Har bir so'z faqat katta va kichik ingliz
// harflaridan iborat (tinish belgilari yo’q). Masalan, "Salom dunyo",
// "SALOM" va "salom dunyo salom dunyo" jumlalari. Sizga s jumlasi va
// butun k soni beriladi. Siz s ni shunday qisqartirishni xohlaysizki,
// u faqat birinchi k ta  so'zni o'z ichiga oladi. Uni qisqartirgandan keyin
// s ni qaytaring.
// String truncateSentence(String s, int k) {}
// Input: s = "Hello how are you Contestant", k = 4
// Output: "Hello how are you"
// Input: s = "What is the solution to this problem", k = 4
// Output: "What is the solution"
// Input: s = "chopper is not a tanuki", k = 5
// Output: "chopper is not a tanuki”

String truncateSentence({required String s, required int k}) {
  List<String> words = s.split(' ');
  String result = '';
  for (int i = 0; i < k; i++) {
    try{
    result += (words[i] + ' ');
    }
    on RangeError{}
  }
  return result;
}

void main() {
  print(truncateSentence(s: "Hello how are you Contestant", k: 4));
  print(truncateSentence(s: "What is the solution to this problem", k: 4));
  print(truncateSentence(s:"chopper is not a tanuki", k: 5));
}
