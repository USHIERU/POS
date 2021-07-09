part of product;

class Product {
  final Uuid _id;
  final String name;
  final double price;
  final int idCategory;

  Product(this._id, this.name, this.price, this.idCategory);

  factory Product.fromPrimitives(String name, double price, Category category) {
    return Product(Uuid(), name, price, category.id);
  }

  String get id => _id.v4();

  @override
  String toString() {
    return "Product { ID: $id, Name: $name, Price: $price, IDCategory: $idCategory }";
  }
}
