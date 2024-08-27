// Berilgan 5 ta sonni qabul qilib, shundan eng katta ikkinchi
// sonni topadigan dastur tuzing

void main(){
  num num1= 70, num2= 105, num3=50, num4=25, num5=30;
  num maximal, maximal_2;
  if (num1 > num2){
    maximal = num1;
    maximal_2 = num2;
  } else {
    maximal = num2; maximal_2 = num1;
  }
  if (maximal < num3) {
    maximal_2 = maximal;
    maximal = num3;
  } else {
    if (maximal_2 < num3) maximal_2 = num3;
  }
  if (maximal < num4) {
    maximal_2 = maximal;
    maximal = num4;
  } else {
    if (maximal_2 < num4) maximal_2 = num4;
  }
  if (maximal < num5) {
    maximal_2 = maximal;
    maximal = num5;
  } else {
    if (maximal_2 < num5) maximal_2 = num5;
  }
  print("Maximal: $maximal, Maximal_2: $maximal_2");
}