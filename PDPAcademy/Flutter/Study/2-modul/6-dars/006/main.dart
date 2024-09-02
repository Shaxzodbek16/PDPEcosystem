// Rasmda berilgan brandlardan nechtasi tanlanganini fold orqali
// hisoblovchi dastur tuzing. Har bir brand Brand nomli class orqali
// ifodalanishi kerak. Rasm quyidagi faylga biriktirilgan.

void main(){
  print(sumOfSelected(['Apple', 'Samsung']));
}

// List will be full of objects, and prevValue will be the method of the object.
int sumOfSelected(List<String> list){
  int result = list.fold(0, (prevValue, newValue) => prevValue+=1);
  return result;
}