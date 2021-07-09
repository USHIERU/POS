part of category;

class Category {
  final int id;
  final String name;
  final DateTime availableFrom;
  final DateTime availableTo;
  List<Product> _products = [];

  Category(this.id, this.name, this.availableFrom, this.availableTo);

  factory Category.empty() {
    return Category(0, '', DateTime.now(), DateTime.now());
  }

  List<Product> get products => _products;
  set addProduct(Product product) => _products.add(product);
}
