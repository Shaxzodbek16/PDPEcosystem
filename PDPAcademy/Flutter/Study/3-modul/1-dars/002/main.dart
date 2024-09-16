// User nomli nomli abstrakt klass tuzing. Uni 3 ta fieldi bo’lsin password
// email va name. User klassdan meros olib ClientUser(xaridor) va
// VendorUser(sotuvchi) nomli klass yarating.
// ClientUserda balance(double) va purchasedItems (sotib
// olingan narsalar: list) nomli alohida private fieldlari bo’lsin.
//
// VendorUserda esa balance(double) va products(list) nomli listi
// bo’lsin va private bo’lsin. Product nomli alohida yana klass
// hosil qiling, bu klassni o’zingiz tuzishga harakat qiling
// ammo id, name, price va quantity nomli fieldlari bo’lishi
// kerak. ClientUserda shopping nomli method bo’lsin parametriga
// pruduct va necha dona olishi ni ifodalovchi amount nomli parametr
// qabul qilsin. VendarUser da esa toSell nomli method bo’lsin
// va ham parametriga pruduct va
// necha dona olishi ni ifodalovchi amount nomli parametr qabul
// qilsin. shopping mehtodi ishlagandagina toSell methodi ishlasin.
// Bu ikki methodni tuzayotganda ClientUserni balance da olmoqchi
// bo’lgan productga yetarlicha miqdorda puli bor yo’qligi va bu
// product ni sotayotganda esa VendorUserda so’ralgan miqdorda
// product bormi tekshirilsin. Agar hamma shart to’g’ri keladigan
// bo’lsa olinayotgan product narxicha pul clientdan yechib olinib,
// vendor balance ga tushurilsin. Shu kabi purchasedItems va product
// nomli listlardagi productlar ham, soni ham sinxron o’zgartirilsin.
// Aks holda yani balance va product bor yo’qligi bilan muammo
// bo’lsa har bir holatga mos xatolik habarini bering. Yuqoridagi
// shartlar asosida realga yaqin ishlaydigan klass va methodlarni
// tuzishga harakat qiling va har bir methodni void mainda ishlatib
// ko’rsating.


abstract class User {
  String password, email, name;

  User(this.name, this.email, this.password);
}

class ClientUser extends User {
  double balance;
  List<Product> purchasedItems = [];

  ClientUser(String name, String email, String password, this.balance)
      : super(name, email, password);

  void shopping(Product product, int amount, VendorUser vendor) {
    if (amount > product.quantity) {
      throw Exception('Insufficient product quantity');
    }
    if (amount * product.price > balance) {
      throw Exception('Insufficient funds');
    }

    List<Product> soldProducts = vendor.toSell(product, amount);
    if (soldProducts.isEmpty) {
      throw Exception('Error processing transaction');
    }

    purchasedItems.addAll(soldProducts);
    balance -= amount * product.price;
    vendor.balance += amount * product.price;

    print('Purchase successful');
  }
}

class VendorUser extends User {
  double balance;
  List<Product> products = [];

  VendorUser(String name, String email, String password, this.balance)
      : super(name, email, password);

  List<Product> toSell(Product product, int amount) {
    List<Product> productsToSell = [];
    for (int i = 0;
        i < products.length && productsToSell.length < amount;
        i++) {
      if (products[i] == product) {
        productsToSell.add(products[i]);
        products.removeAt(i);
        i--;
      }
    }
    return productsToSell;
  }
}

class Product {
  static int nextId = 1;
  int id = 0;
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity) {
    id = nextId++;
  }

  @override
  bool operator ==(Object other) => other is Product && other.id == id;

  @override
  int get hashCode => id.hashCode;
}

void main() {
  ClientUser client = ClientUser('Alice', 'alice@example.com', 'password', 100);
  VendorUser vendor = VendorUser('Bob', 'bob@example.com', 'password', 0);

  Product product = Product('Apple', 2.0, 10);
  vendor.products.add(product);

  try {
    client.shopping(product, 5, vendor);
  } catch (e) {
    print('Error: ${e.toString()}');
  }
}
