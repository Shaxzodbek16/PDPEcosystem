// Computer nomli klass tuzilsin. Bu klassni imkon qadar mukammal
// modellashtiring, yani fieldlariga yaxshi e’tibor berilishi
// kerak va shu klassda quyidagilar bo’lishi kerak:
//  1. generative parameterize constructor tuzilsin
//  2. laptop nomli named constructor tuzilsin
//  3. desktop nomli named constructor tuzilsin
//  4. const constructor tuzilsin
//  5. factory constructor tuzilsin
//  6. getter/setter yozilsin
//  7. main funksiyani ichida yuqoridagi constructorlardan
//  foydalanib bir nechta object lar hosil qiling

class Computer {
  final double price;
  final String name;
  final String type;

  const Computer({
    required this.price,
    required this.name,
    required this.type,
  });

  Computer.laptop(this.price, this.name) : type = 'Laptop';

  Computer.desktop(this.price, this.name) : type = 'Desktop';

  factory Computer.factory(int amount, double price, String name, type) {
    return Computer(price: price, name: name, type: type);
  }

  // set computerName(String name){
  //   this.name = name;
  // }

  String get computerName {
    return this.name;
  }
}
