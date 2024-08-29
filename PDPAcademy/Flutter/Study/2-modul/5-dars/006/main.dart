// Takrorlanish operatoridan foydalanmagan holda S satrdagi raqamlar sonini
// aniqlovchi int toifadagi digitCount(S) rekursiv funksiyasi tuzilsin.
// Shu funksiya yordamida berilgan satrdagi raqamlar soni aniqlansin.
// S = “Agent 007”; => Natija: 3
// S = “Janob 420 filmi 19:00 da boshlanadi”; => Natija: 7

void main(){
  print(countNumbers("Agent 007"));
  print(countNumbers("Janob 420 filmi 19:00 da boshlanadi"));
}

int countNumbers(String s){
  int count=0;
  if(s.isEmpty) return 0;
  if(isNumber(s[0])){
    count++;
  }
  return count+countNumbers(s.substring(1));
}

bool isNumber(String s){
  return int.tryParse(s)!=null;
}