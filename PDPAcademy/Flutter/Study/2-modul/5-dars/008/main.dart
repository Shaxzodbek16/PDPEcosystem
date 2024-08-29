// Bizga s va goal nomli ikkita string beriladi. s ning bir necha siljishidan
// keyin s goal bo'lishi mumkin bo'lgan taqdirdagina true qiymatini
// qaytaradigan rotateString nomli funksiya tuzing. Siljish s ning eng chap
// belgisini eng o'ng holatiga o'tkazishdan iborat. Misol uchun,
// agar s = "abcde" bo'lsa, u bir siljishdan keyin "bcdea" bo’ladi.

void main(){
  print(rotateString('abcde', 'bcdea'));
}

bool rotateString(String s, String goal){
  if(s.length < goal.length) return false;
  int n = s.length -1, i=0;
  String f;
  while (n > i ){
    f = s[i];
    s = s.substring(1) + f;
    i++;
    if(goal==s) return true;
  }
  return false;
}
