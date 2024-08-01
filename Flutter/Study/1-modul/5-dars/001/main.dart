// Berilgan 3 ta sondan bir xil bo’lmaganini ekranga chiqaradigan dastur tuzing.
// Agar barcha sonlar bir xil bo’lsa ‘=’ belgisi chiqsin.
// Tekshirish uchun dastur kodini yuboring.

void main(){
  int num1 = 1, num2 = 10, num3 = 11;
  if (num1 == num2 && num2 == num3){
    print("=");
  }
  else if (num1 == num2 && num2 != num3){
    print(num3);
  }
  else if (num2 == num3 && num3 != num1){
    print(num1);
  }
  else if(num3 == num1 && num3 != num2){
    print(num2);
  }
  else{
    print("All nmumber is not the some");
  }
}
