// List list = ["pdp", 4, "flutter best", 10.45, "online",1,2.7,3,
// "android", 3.14]; Ushbu list elementlarini(string ,int, double)
// typelariga qarab ajratib yangi listlarga ajratib oling.
// Ekranga uchta list chiqsin!

void main(){
  List list = ["pdp", 4, "flutter best", 10.45, "online",1,2.7,3,"android", 3.14];
  List<String> strings = [];
  List<int> integers = [];
  List<double> doubles = [];

  for(var element in list){
    switch(element.runtimeType){
      case double:
        doubles.add(element);
        break;
      case int:
        integers.add(element);
        break;
      case String:
        strings.add(element);
        break;
    }
  }

  print(strings);
  print(integers);
  print(doubles);
}
