// 4-taskdagi vazifalar bajarilgandan so’ng uni davomi sifatida ShoppingCart
// nomli sinf hosil qiling, bu sinf Product lar listidan tashkil topgan bo’lsin
// Bu sinf uchun ham copyWith methodini yozing .

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

class ShoppingCart {
  List<Product> products;

  ShoppingCart(this.products);

  ShoppingCart copyWith(List<Product>? products) {
    if (products == null) {
      return ShoppingCart(this.products);
    }

    List<Product> clone = [];
    for (final product in products) {
      clone.add(product.copyWith());
    }
    return ShoppingCart(clone);
  }
}
