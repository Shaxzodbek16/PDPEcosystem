// Berilgan sonni faktorialini hisoblovchi dastur tuzing.

void main(){
  int N = 5;
  int Fac = 1;
  while (N != 1){
        Fac *= N;
        N += -1;
  }
  print(Fac);
}
