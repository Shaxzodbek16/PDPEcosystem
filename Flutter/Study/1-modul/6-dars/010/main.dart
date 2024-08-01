// a) Raqamlari yig’indisi 10 ga teng bo’lgan barcha 3 xonali natural sonlarni
// ekranga chiqaruvchi dastur tuzing.
//
// b) Sonlardan tashkil topgan list berilgan, shu listning eng katta elementini
// topuvchi dastur tuzing.

void main(){
  for (int i=109; i <= 910; i++){
    int n1 = i ~/100, n3= i%10;
    int n2 = ((i - n3 ) ~/ 10) % 10;

    if (n1+n2+n3==10){
      print(i);
    }
  }
}