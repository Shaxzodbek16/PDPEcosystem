// Berilgan sartni katta lotin harflarini kichikga, kichiklarini katta
// harflarga aylantiruvchi funksiya tuzilsin. Example: “FLuTTeR” => “flUttEr”
void main(){
  print(upperLower('FLuTTeR'));
}

String upperLower(String word){
  String reversedWord = '';
  for(int i=0; i< word.length; i++){
    if(word[i].toLowerCase() == word[i]){
      reversedWord+=word[i].toUpperCase();
      continue;
    }reversedWord+=word[i].toLowerCase();
  }
  return reversedWord;
}
