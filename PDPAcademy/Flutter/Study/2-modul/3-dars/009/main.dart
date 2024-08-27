// Words nomli class hosil qiling, class da shunday method yozingki berilgan
// stringdan har bir so’zni teskarisiga o’zgartirsin.
// reverseWords(“O’zbekistonning poytaxti Toshkent”) → ”gninnotsikebz’O itxatyop tnekhsoT”;
// reverseWords(“Kiyik yugurmoqda”) →”kiyiK adqomruguy”;


void main() {
  Words word = Words();
  print(word.reverseWords('Kiyik yugurmoqda'));
}


class Words {

  String reverseWords(String text) {
  List<String> words = text.split(' ');
  for (int i = 0; i < words.length; i++) {
    words[i] = this.reverseWord(words[i]);
  }
  return words.join(' ');
}

  String reverseWord(String word) {
    String reversedWord = "";

    for (int j = word.length - 1; j >= 0; j--) {
      reversedWord += word[j];
    }
    return reversedWord;
  }
}
