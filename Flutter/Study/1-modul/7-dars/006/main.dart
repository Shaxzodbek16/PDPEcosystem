// n soni berilgan. Geometrik shaklni ekranga chiqaring. Maslahat:
// Misolni 2 ta for bilan ishlang. Qatorlar soni n ta bo'lsin va har bir
// qatordagi yulduzchalar soni ham n ta bo’lsin. Namunaviy shakil main.jpg
// faylda ko'rsatilgan.

void main(){
  int n = 5;
  for(int i =1; i<=n; i++){
    String text = '';
    for(int j=1; j<=n; j++){
      if (i + j == n+1){
        text += '* ';
      } else {
        text += "  ";
      }
    }
    print(text);
  }
}