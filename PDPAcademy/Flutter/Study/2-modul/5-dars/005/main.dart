// N natural soni berilgan. N gacha bo'lgan do'st sonlarni chigaruvchi dastur
// tuzilsin. Agar birinchi son bo'luvchilari yig'indisi ikkinchi songa,
// ikkinchi son bo'luvchilari yig'indisi birinchi songa teng bo'lsa,
// bu sonlar do'st sonlar deyiladi.


void main(){
  final result = friendNumbers(1000, sumOfDividers);
  print(result);
}

int sumOfDividers(int number){
  int sum = 0;
  for(int i=1; i<=number; i++){
    if(number%i==0) sum+=i;
  }
  return sum;
}

List<List<int>> friendNumbers(int N, int Function(int) sum){
  List<List<int>> friends = [];
  for(int i = 1; i<= N; i++){
    for(int j = i+1; j<=N; j++){
      if(sum(i) == sum(j)) friends.add([i, j]);
    }
  }
  return friends;
}