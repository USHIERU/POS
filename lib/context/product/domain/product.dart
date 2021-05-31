class Product {
  final int id;
  final String name;
  final double price;
  final int idCategory;

  Product(this.id, this.name, this.price, this.idCategory);

  factory Product.empty() {
    return Product(0, '', 0, 0);
  }

  @override
  String toString() {
    return "Product {ID: $id, Name: $name, Price: $price, IDCategory: $idCategory}";
  }
}
