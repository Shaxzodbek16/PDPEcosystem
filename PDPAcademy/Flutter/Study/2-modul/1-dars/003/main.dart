// Fibonachchi soni bo'lgan n butun soni berilgan (n > 1). n sonidan bir
// oldingi va bir keyingi Fibonachchi sonlarini chiqaruvchi funksiya tuzilsin.


void main(){
  final tenFibonacci = Fibonacci();
  print(tenFibonacci.fibonacci(100));
}


class Fibonacci{
  int? number;
  int fibonacci(number){
    if (number == null) return 0;
    if (number< 0) return -1;
    if (number < 1) return 1;
    return this.fibonacci(number - 1) + this.fibonacci(number -2);
  }
}