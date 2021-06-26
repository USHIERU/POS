import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId: 1)
class Product {
  @HiveField(0)
  final int id;
  @HiveField(2)
  final String name;
  @HiveField(3)
  final double price;
  @HiveField(4)
  final int idCategory;

  Product(this.id, this.name, this.price, this.idCategory);

  factory Product.empty() {
    return Product(0, '', 0, 0);
  }

  @override
  String toString() {
    return "Product { ID: $id, Name: $name, Price: $price, IDCategory: $idCategory }";
  }
}
