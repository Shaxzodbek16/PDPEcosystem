// Name, price va category maydonlariga ega bo’lgan Product nomli sinf
// hosil qiling. Sinfda copyWith methodini yozing.

class Product {
  String name, category;
  double price;

  Product({
    required this.name,
    required this.category,
    required this.price,
  });

  Product copyWith({String? name, String? category, double? price}) {
    return Product(
        name: name ?? this.name,
        category: category ?? this.category,
        price: price ?? this.price);
  }
}
