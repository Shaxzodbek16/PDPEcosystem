// 3-taskdagi Product classiga productDetails nomli maydon qo’shing.
// Bu maydon ProductDetails nomli sinfning obyekti hisoblanib,
// product haqida aniq ma’lumot bersin. ProductDetails sinfida
// hech qanday copyWith mehodi yozmasdan Product sinfi uchun
// copyWith methodini deep copy ga asoslanib qaytadan yozing.

class ProductDetails {
  String fullName, description;
  int qty;

  ProductDetails({
    required this.fullName,
    required this.description,
    required this.qty,
  });
}

class Product {
  ProductDetails productDetails;
  String name, category;
  double price;

  Product({
    required this.name,
    required this.category,
    required this.price,
    required this.productDetails,
  });

  Product copyWith(
      {String? name,
      String? category,
      double? price,
      ProductDetails? productDetails}) {
    return Product(
      name: name ?? this.name,
      category: category ?? this.category,
      price: price ?? this.price,
      productDetails: productDetails ??
          ProductDetails(
            fullName: this.productDetails.fullName,
            description: this.productDetails.description,
            qty: this.productDetails.qty,
          ),
    );
  }
}
