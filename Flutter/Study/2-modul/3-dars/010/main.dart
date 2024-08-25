// Berilgan a va b natural sonlarining eng kichik umumiy
// karralisi (EKUK) ni aniqlovchi metod yozing.
// ekuk( 12, 18 ) → 36
// ekuk ( 2, 3 ) → 6
// ekuk ( 12, 24 ) → 24


void main(){
  Math math = Math();
  print(math.ekuk(12, 18));
}

class Math{
  int ekuk(int a, int b){
    return a * b ~/ a.gcd(b);
  }
}