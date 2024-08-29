// Kiritilgan satrni teskari tartibda o’giruvchi return typeli funksiya tuzilsin.

void main(){
  print(stringReverse('Shaxzodbek'));
}

String stringReverse(String text){
  int low = 0, high = text.length -1;
  List<String> words = text.split('');
  String temp = '';
  while(low < high){
    temp = words[low];
    words[low] = words[high];
    words[high] = temp;
    low++;
    high--;
  }
  return words.join();
}