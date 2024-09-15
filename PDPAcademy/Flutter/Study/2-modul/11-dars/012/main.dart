// Satr ichidan matn izlash, shuningdek, asl satr ichida uchraydigan matn
// joyni topish uchun dastur yozing. Agar matn bir necha marta uchrasa
// birinchisini o’rni ko’rsatilsin. Sample text : 'The quick brown fox
// jumps over the lazy dog.’ Searched words : ‘fox’ Result: 16 dan 19 gacha

void main(){
  print(finderWord("The quick brown fox jumps over the lazy dog.","fox"));
}

List<int>? finderWord(String text, String searchingWord){
  int from = text.indexOf(searchingWord);
  if(from != -1){
    int end = from + searchingWord.length;
    return [from, end];
  }
  return null;
}