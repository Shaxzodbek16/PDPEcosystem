//Radiusi 10 bo`lgan sharning sirtining yuzini va
// hajmini topuvchi dastur tuzing.

import 'dart:math';

void main(){

  int radius = 10;
  const pi = 3.14;
  double scope = (4/3)*pi*pow(radius, 3);
  double S = 4*pi*radius*radius;
  print("Shar yuzasi: $S ga, hamda hajmi: ${scope} ga teng.");

}