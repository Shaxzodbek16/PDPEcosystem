// 3 ta a, b, c sonlari berilgan. Agar shu sonlar ichida faqat 2 tasi musbat
// bo’lsa, bu sonlarni yig’indisini aks holda ko’paytmasini ekranga
// chiqaruvchi dastur tuzing.

void main(){
  int a = 10, b = 20, c = -20;
  if (((a >= 0 && b >= 0) && c < 0) || ((b >= 0 && c >= 0) && a < 0) || ((c >= 0 && a >= 0) && b < 0)) print(a+b+c);
    else print(a*b*c);
}
