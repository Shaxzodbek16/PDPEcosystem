// Colors nomli enhanced enum hosil qiling va
// elementlar qiymatiga ranglarning rgb code ni kiriting.

enum Colors{
  white(0xFFFFFF),
  black(0x000000);
  const Colors(this.number);
  final int number;
}


void main(){
  int result = Colors.white.number;
  print(result.toRadixString(16));
}