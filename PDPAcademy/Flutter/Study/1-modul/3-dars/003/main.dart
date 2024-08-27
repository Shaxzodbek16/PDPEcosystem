// a va b haqiqiy sonlar berilgan.
// Ular ustida arifmetik operatorlarni bajarib,
// natijani ekranga chiqaruvchi dastur tuzing.
// Masalan: a = 25, b = 10 bo’lsa,
// natija a + b = 35, a - b = 15. Vazifa sifatida dastur kodini yuboring.

void main(){
  num a = 25, b= 10;
  if (b!=0){
    print("$a / $b = ${a/b}");
  }
  else{
    print("Zero Divide Error");
  }
  print("$a * $b = ${a*b}");
  print("$a + $b = ${a+b}");
  print("$a - $b = ${a-b}");
  print("$a % $b = ${a%b}" + " (We do not need this line)");
}