// Kichik harflar va probellardan iborat satr berilgan. Birinchi va
// oxirgi belgilari bir xil bo’lgan so`zlarning sonini aniqlovchi metod yozing.
// method("abc abba noun book") → 2
// method("laptop notebook esse") → 1
// method("pen notebook") → 0


void main(){
  Words word = Words();
  print(word.theSameEnds('abc abba noun book'));
  print(word.theSameEnds('laptop notebook esse'));
  print(word.theSameEnds('pen notebook'));
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


  int theSameEnds(String text){
    List<String> texts = text.split(' ');
    int count = 0;
    for(String word in texts) {
      if (word.isEmpty){
        continue;
      }
      if (word[0] == word[word.length - 1]) count++;
    }
    return count;
  }
}