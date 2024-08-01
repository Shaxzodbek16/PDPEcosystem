// 3 ta a, b, c sonlar berilgan. Shu 3 ta sonni ko’paytmasini ekranga
// chiqadigan dastur tuzing. Lekin agar sonlardan biri boshqasiga teng
// bo’lsa, shu sonlar ko’paytmaga ishtirok etmasin.

void main(){
  int a=10, b=20, c=10;
  if (a!=b && b!=c && c!=a) print(a*b*c);
  else if (a==b && b!=c) print(c);
  else if (a==c && c!=b) print(b);
  else if (b==c && c!=a) print(a);
}