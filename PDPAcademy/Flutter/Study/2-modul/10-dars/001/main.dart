// Words nomli class tuzing. Class quyidagilardan iborat bo’lsin va void
// mainda har bir yozilgan methodlarni object olib ishlatib ko’rsatilsin:
// • Class da String turidagi word nomli private fieldi bo’lsin.
//  • Class dan object faqat factory named konstructor orqali yaratilsin va
//  shu konstructor orqali fieldga qiymat kirib kelsin. Factory konstruktor
//  orqali object yaratishimizning sababi kirib kelgan qiymat yani satrlar
//  bo’sh bo’lmasligini va word lotin kichik alifbo harflaridan iborat
//  ekanligini tekshiramiz. Agar satr yuqoridagi shartlarga mos kelmasa
//  bo’sh satrli obyekt yarating.
// • Bu class uchun toString, noSuchMethod, hashCode, operator== ,
// methodlar yozilsin.
// • Eng asosiysi bu class da word da kelgan satrdagi barcha unlilarni
// teskarisiga aylantiruvchi va uni qaytaruvchi reverseVowels
// nomli method yozilsin. Unli tovushlar “a”, “e”, “i”,”o” va “u” bo’lib,
// ular kichik harflarda bir necha marta takror kelishi mumkin.
//  Input: s = “hello”
//  Output: “holle”
// Input: s = “leetcode”
//  Output: “leotcede”
void main() {
  Words word1 = Words('leetcode');
  Words word2 = Words('hello');
  Words word3 = Words('123');
  dynamic word4 = Words('');

  print(word3 == word4);

  print(word1.reverseVowels());
  print(word2.reverseVowels());

  word4.add('not add method there');
}

class Words {
  final String _word;

  const Words._(this._word);

  factory Words(String word) {
    if (word.contains(new RegExp(r'[a-z]'))) {
      return Words._(word);
    }
    return Words._('');
  }

  @override
  String toString() {
    if (_word == '') {
      return 'It is empty string.';
    }
    return _word;
  }

  @override
  noSuchMethod(Invocation invocation) {
    print(invocation.runtimeType);
    print(invocation.isMethod);
    super.noSuchMethod(invocation);
  }

  @override
  int get hashCode => _word.hashCode;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is Words) {
      return runtimeType == other.runtimeType && _word == other._word;
    }
    return false;
  }

  String reverseVowels() {
    if (_word == '') return '';
    List<String> letters = _word.split('');

    int low = 0, high = letters.length - 1;
    bool lowChecker = false, highChecker = false;
    List<String> vowels = ["a", "e", "i", "o", "u"];
    while (low < high) {
      if (vowels.contains(letters[low])) {
        lowChecker = true;
      } else {
        low++;
      }

      if (vowels.contains(letters[high])) {
        highChecker = true;
      } else {
        high--;
      }
      if (lowChecker && highChecker) {
        String h = letters[low];
        letters[low] = letters[high];
        letters[high] = h;
        highChecker = false;
        lowChecker = false;
        low++;
        high--;
      }
    }
    return letters.join();
  }
}
