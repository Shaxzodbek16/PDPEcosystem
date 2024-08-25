// Product nomli class hosil qiling, u quyidagi fieldlardan iborat bo’lsin.
// Class constructorini named parameter orqali hosil qiling!
// • id
// • brand
// • name
// • price
// • quantity
// • description
// • soldQuantity
// • sizes
// • colors
// • category

class Product{
  int id, quantity, soldQuantity;
  String brand, name, description, colors, category;
  double price, sizes;

  Product({required this.id, required this.quantity, required this.soldQuantity,
    required this.brand, required this.name, required this.description,
    required this.colors, required this.category, required this.price, required this.sizes});

}