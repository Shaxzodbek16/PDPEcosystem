// Uchta butun a, b, c sonlar berilgan. Jumlani rostlikka tekshiring:
// a, b, c sonlarning faqat ikkitasi musbat son.

void main(){
  int a = 10, b = 20, c = -20;
  if (((a >= 0 && b >= 0) && c < 0) || ((b >= 0 && c >= 0) && a < 0) || ((c >= 0 && a >= 0) && b < 0)) print(true);
  else print(false);
}
