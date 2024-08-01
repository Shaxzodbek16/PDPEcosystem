// Berilgan son 3 ga va 5 ga karraliligini tekshiruvchi dastur tuzing.

void main(){
  int number = 16;
  if (number % 15 ==0 ) print("$number soni 3 ga ham, 5 ga ham karrrali.");
  else if (number % 3 == 0) print("$number soni 3 ga karrrali.");
  else if (number % 5 == 0) print("$number soni 5 ga karrrali.");
  else print("$number soni 5 ga ham, 3 ga ham karrali emas.");
}
