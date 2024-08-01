// 4 ta a, b, c, d son berilgan, kattasidan kichigini ayirib ekranga natijani
// chiqaruvchi, agar berilgan sonlarning barchasi o’zaro teng bo’lsa
// yig’indisini ekranga chiqaruvchi dastur tuzing.

void main(){
  int a = 1, b= 2, c= 3, d = 4;
  int max = a, min = a;
  if (a==b && b==c && c==d && d==a) print (a+b+c+d);
  else {
    max < b ? max = b : max = max;
    max < c ? max = c : max = max;
    max < d ? max = d : max = max;

    min > b ? min = b : min = min;
    min > c ? min = c : min = min;
    min > d ? min = d : min = min;
    print(max -min);
  }
}
