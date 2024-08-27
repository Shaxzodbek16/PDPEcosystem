// Valid Anagram. Berilgan 2 ta String lar o`zaro anagram bo`lsa true,
// anagram bo`lmasa false qiymat qaytaradigan qilib quyidagicha Class va
// Funksiya yozing.

// ValidAnagram anagram = ValidAnagram(str1, str2);
// anagram.isAnagram();
// 2 ta string anagram deyiladi qachonki biridan ikkinchini hosil qilib bo`lsa.
// Aks holsa anagram emas.

// Masalan:
// Input: s = "anagram", t = “nagaram”. Output: true
// Input: s = "rat", t = “car”. Output: false

void main() {
  ValidAnagram anagram = ValidAnagram("rat", "car");
  print(anagram.isAnagram());
}

class ValidAnagram {
  String str1, str2;

  ValidAnagram(this.str1, this.str2);

  bool isAnagram() {
    if (str1.length != str2.length) return false;

    Map<String, int> charCount = {};

    for (int i = 0; i < str1.length; i++) {
      charCount[str1[i]] = (charCount[str1[i]] ?? 0) + 1;
    }

    for (int i = 0; i < str2.length; i++) {
      if (!charCount.containsKey(str2[i]) || charCount[str2[i]] == 0) {
        return false;
      }
      charCount[str2[i]] = charCount[str2[i]]! - 1;
    }
    return true;
  }
}
