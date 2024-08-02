// x, y, z sonlari berilgan. Shu sonlar uchburchakning ichki burchaklari
// ekanligini aniqlaydigan funksiya tuzing. Agar berilgan sonlar
// uchburchakning ichki burchaklari bo’lsa true aks holda false qiymat
// qaytarsin.

void main(){
  print(isTriangle(5, 4, 3));
}

bool isTriangle(num a, num b, num c){
  if(a+b > c && b + c > a && a+c > b) return true;
  return false;
}