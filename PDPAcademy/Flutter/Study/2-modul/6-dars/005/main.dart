// Product nomli class hosil qiling va quyidagi faylda ko'rsatilgan
// json ni obyektga o’tkazing.

void main() {
  final json = {
    "id": 9,
    "title": "Infinix INBOOK",
    "description": "Infinix Inbook X1 Ci3 10th 8GB...",
    "price": 1099,
    "discountPercentage": 11.83,
    "rating": 4.54,
    "stock": 96,
    "brand": "Infinix",
    "category": "laptops",
    "thumbnail": "https://cdn.dummyjson.com//product-image/9/thumbnail.jpg",
    "images": [
      "https://cdn.dummyjson.com//product-image/9/1.jpg",
      "https://cdn.dummyjson.com//product-image/9/2.jpg",
      "https://cdn.dummyjson.com//product-image/9/3.jpg",
      "https://cdn.dummyjson.com//product-image/9/4.jpg",
      "https://cdn.dummyjson.com//product-image/9/thumbnail.jpg"
    ]
  };
  final product9 = Product(
      id: json['id'] as int,
      title: json['title'] as String,
      description: json['description'] as String,
      price: json['price'] as double,
      discountPercentage: json['discountPercentage'] as double,
      rating: json['rating'] as double,
      stock: json['stock'] as int,
      brand: json['brand'] as String,
      category: json['category'] as String,
      thumbnail: json['thumbnail'] as String,
      images: json['images'] as List<String>);
}

class Product {
  int id, stock;
  String title, description, brand, category, thumbnail;
  double price, discountPercentage, rating;
  List<String> images;

  Product(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.discountPercentage,
      required this.rating,
      required this.stock,
      required this.brand,
      required this.category,
      required this.thumbnail,
      required this.images});
}
