// Imtihondan olingan ball kiritilsa uning bahosini aniqlovchi dastur tuzing.
// Bunda 0-54 2 baho, 55-70 3 baho, 71-84 4 baho, 85-100 5 baho ga teng.

void main(){
  int mark = 70;
  if ( 0 > mark && mark > 101){
    print("0 va 100 oraliqdagi balni kiriting !");
  } else {
    if (0<= mark && 54 >= mark){
      print("2 baho");
    } else if (55<= mark && 70 >= mark){
      print("3 baho");
    } else if (71<= mark && 84 >= mark){
      print("4 baho");
    } else if (85<= mark && 100 >= mark){
      print("5 baho");
    }
  }
}