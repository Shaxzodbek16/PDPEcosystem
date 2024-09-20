// Berilgan String dan eng ko'p ishlatilgan ikkinchi belgini topuvchi extension
// method tuzing.
// Misol uchun: text ="oq choynakka ko'k qopqoq, ko'k choynakka op qopqoq”;
// print(text.useMaxSecond); // console: “ “ - probel

extension StringExtension on String {
  String? get secondMostRepeatedChar {
    Map<String, int> charCount = {};

    for (String char in this.split('')) {
      charCount[char] = (charCount[char] ?? 0) + 1;
    }

    var sortedCharCount = charCount.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    return sortedCharCount.length >= 2 ? sortedCharCount[1].key : null;
  }
}
