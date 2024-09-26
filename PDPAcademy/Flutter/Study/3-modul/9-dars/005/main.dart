// Kiritiligan songacha bo’lgan sonlarni quyidagicha yuboruvchi asinxron
// generator yarating:
// n = 3 bo’lsa stream ham sekundda o’zi kelgan qadamni qadam sonicha
// chiqarishi kerak:
// 1 => 1 - sekund
// 2, 2 => 1 - sekund
// 3, 3, 3 => 1 - sekund

Stream<String> timesGenerator(int n) async* {
  List<String> result = [];
  for(int i = 1; i<= n; i++){
    await Future.delayed(Duration(seconds: 1));
    result.add(i.toString());
    yield result.join(", ") + " => 1 - sekund";
  }
}


void main() async {
  final results = timesGenerator(100);
  await for(final result in results){
    print(result);
  }
}