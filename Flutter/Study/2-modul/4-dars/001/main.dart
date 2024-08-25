// String str = "asdfsdfgjgfjgooehmrgqwxxzmr"; Bu matnda qatnashgan har bitta
// harflar soni topilsin va shu sonlarning o`rtacha qiymati ekranga chiqsin!

void main(){
  print(lettersAverageAmount('asdfsdfgjgfjgooehmrgqwxxzmr'));
}

num lettersAverageAmount(String text){
  Map<String, int> counts = {};
  for(int i  = 0; i< text.length; i++ ){
    if (counts.containsKey(text[i])){
      counts[text[i]] = counts[text[i]]! + 1 ;
      continue;
    }
    counts[text[i]] = 0;
  }
  int summa = 0;
  for(int number in counts.values){
    summa += number;
  }
  int divideBy = counts.values.length;
  num average = summa / divideBy;
  return average;
}