//Turli ma'lumot turlari (butun sonlar, satrlar va listlar) listini qabul qiluvchi va
// pattern matching yordamida ularni uchta alohida listga ajratadigan Dart
// funksiyasini amalga oshiring: butun sonlar uchun, satrlar uchun va listlar
// uchun. Bu listlarni record sifatida qaytaring.

class TypedLists {
  final List<int> integers;
  final List<String> strings;
  final List<List> lists;

  TypedLists({
    required this.integers,
    required this.strings,
    required this.lists,
  });
}

TypedLists separateTypes(List<dynamic> mixedList) {
  final integers = <int>[];
  final strings = <String>[];
  final lists = <List>[];

  for (final element in mixedList) {
   if(element is int){
     integers.add(element);
     continue;
   }
   if(element is String){
     strings.add(element);
     continue;
   }
   if(element is List){
     lists.add(element);
     continue;
   }
  }

  return TypedLists(
    integers: integers,
    strings: strings,
    lists: lists,
  );
}

void main() {
  final mixedList = [1, 'hello', [2, 3], 'world', 42, ['a', 'b']];
  final separatedLists = separateTypes(mixedList);

  print(separatedLists.integers);
  print(separatedLists.strings);
  print(separatedLists.lists);
}
