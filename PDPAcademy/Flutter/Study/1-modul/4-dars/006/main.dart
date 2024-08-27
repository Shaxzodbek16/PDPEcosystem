// 5 ta butun son berilgan. Shu sonlar orasida nechta musbat va nechta manfiy,
// nechta nol raqami borligini aniqlovchi hamda 5 ta sondan kattasini topuvchi
// dastur tuzing. Tekshirish maqsadida dastur kodini yuboring.

void main(){
  int num1=10, num2=0, num3=-10, num4=199, num5 = -2;
  int positive=0, negative = 0 , zero = 0;
  num1 >= 0
  ? num1 > 0
      ? positive +=1: zero +=1
  : negative+=1;

  num2 >= 0
      ? num2 > 0
      ? positive +=1: zero +=1
      : negative+=1;

  num3 >= 0
      ? num3 > 0
      ? positive +=1: zero +=1
      : negative+=1;

  num4 >= 0
      ? num4 > 0
      ? positive +=1: zero +=1
      : negative+=1;

  num5 >= 0
      ? num5 > 0
      ? positive +=1: zero +=1
      : negative+=1;
print("Positive: $positive\nNegative: $negative\nZero: $zero");
int max = num1;
num1 > num2? max = num1 : max = num2;
num2 > num3 ? max = num2 : max = num3;
num3 > num4 ? max = num3 : max = num4;
num4 > num5 ? max = num4 : max = num5;

print("Max: $max");
}