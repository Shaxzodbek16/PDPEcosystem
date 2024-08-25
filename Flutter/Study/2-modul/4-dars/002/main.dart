// S1 va S2 satrlari berilgan. S2 satrini S1 satrida takrorlanishlar sonini
// chigaruvchi dastur tuzing.

void main(){
  print(repeat("Hello, PDP", "PDP"));
}

int repeat(String S1, String S2){
  int count = 0;
  List<String> words = S1.split(" ");
  for(String word in words){
    if (word==S2) count++;
  }
  return count;
}