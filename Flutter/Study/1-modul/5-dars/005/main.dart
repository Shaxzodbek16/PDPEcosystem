// a, b, c sonlari berilgan. Shu sonlar uchburchakning tomonlari ekanligini
// aniqlang. Agar berilgan sonlar uchburchakning tomonlari bo’lsa uning
// shaklini aniqlang. Agar teng tomonli bo'lsa ‘Teng tomonli' so'zini konsolga
// chiqaring. Agar teng yonli bo'lsa ‘Teng yonli' so'zini konsolga chiqaring.
// Agar ixtiyoriy bo'lsa ‘Turli tomonli' so'zini konsolga chiqaring. Aks holda
// konsolga “Bu sonlar orqali uchburchak hosil qilib bo’lmaydi!” yozuvi
// chiqarilsin.

void main(){
  int a = 5, b = 12, c = 144;
  if (a + b > c && b + c > a && a + c > b){
    if (a==b && b == c) print("Teng tomonli");
    else if (a==b || b == c || c == a) print("Teng yonli");
    else print("Turli tomonli");
  }
  else print("Bu sonlar orqali uchburchak hosil qilib bo’lmaydi!");
}
