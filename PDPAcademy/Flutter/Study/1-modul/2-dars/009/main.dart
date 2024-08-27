// A, B va C sonlar berilgan. A ni qiymati B ga, B ni qiymati C ga va C ni
// qiymati A ga almashtirilsin. A, B va C ning yangi qiymati ekranga
// chiqarilsin. Vazifa sifatida dastur kodi yuborilsin.

void main(){
  num A = 10, B = 20, C = 30;
  num additional;
  additional =A;
  A =B;
  B = C;
  C = additional;
  print("$A , $B , $C");
}
