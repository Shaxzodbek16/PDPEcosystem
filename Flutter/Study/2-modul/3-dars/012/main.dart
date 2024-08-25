// Berilgan int toifasidagi list ning 2 va undan ortiq marta qatnashgan
// barcha elementlarini 0 ga o’zgartiruvchi metod yozing.
// changeToZero([1, 2, 3, 1, 4, 2, 5]) → [0, 0, 3, 0, 4, 0, 5]
// changeToZero([1, 2, 3, 4]) → [1, 2, 3, 4]

void main(){
  Math math = Math();
  print(math.changeToZero([1, 2, 3, 1, 4, 2, 5]));
  print(math.changeToZero([1, 2, 3, 4]));
}

class Math{
  List<int> changeToZero(List<int> elements){
    int i = 0, j = i + 1;
    int n = elements.length -1, index = 0;
    bool makeZero = false;
    while (i < n -1){
      if (elements[i] == elements[j]){
        elements[j] = 0;
        makeZero = true;
        index = i;
      }
      j++;
      if (j == n){
        if (makeZero) elements[index] = 0;
        i++; j = i+1;
      }
    }
    return elements;
  }
}