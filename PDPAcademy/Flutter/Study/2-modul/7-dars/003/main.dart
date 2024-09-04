// Product nomli klass tuzilsin. Bu klassni imkon qadar mukammal
// modellashtiring, yani fieldlariga yaxshi e’tibor berilishi
// kerak va shu klassda quyidagilar bo’lishi kerak:
//  1. generative parameterize constructor tuzilsin
//  2. fruit nomli named constructor tuzilsin
//  3. drink nomli named constructor tuzilsin
//  4. const constructor tuzilsin
//  5. factory constructor tuzilsin
//  6. getter/setter yozilsin
//  7. main funksiyani ichida yuqoridagi constructorlardan
//  foydalanib bir nechta object lar hosil qiling

class Product {
  final int amount;
  final double price;
  final String name;
  final String type;

  const Product(
      {required this.amount,
      required this.price,
      required this.name,
      required this.type});

  Product.fruit(this.amount, this.price, this.name) : type = 'Fruit';

  Product.drink(this.amount, this.price, this.name) : type = 'Drink';

  factory Product.factory(int amount, double price, String name, type) {
    return Product(amount: amount, price: price, name: name, type: type);
  }

  // set productName(String name){
  //   this.name = name;
  // }

  String get ProductName {
    return this.name;
  }
}
