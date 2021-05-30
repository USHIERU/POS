class Product {
  final String name;
  final double price;

  Product(this.name, this.price);

  factory Product.empty() {
    return Product('', 0);
  }

  @override
  String toString() {
    return "Product {Name: $name, Price: $price}";
  }
}
