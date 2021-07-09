part of product;

class Product {
  final String id;
  final String name;
  final double price;
  final int idCategory;

  Product(Uuid id, this.name, this.price, this.idCategory): this.id = id.v4();

  factory Product.fromPrimitives(String name, double price, Category category) {
    return Product(Uuid(), name, price, category.id);
  }

  @override
  String toString() {
    return "Product { ID: $id, Name: $name, Price: $price, IDCategory: $idCategory }";
  }
}
