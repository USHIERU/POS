import 'package:pos/contexts/pos/ingredients/domain/ingredient.dart';
import 'package:pos/contexts/pos/products/domain/product_id.dart';

class Product {
  ProductID _id;
  String _name;
  double _price;
  int _quantity;
  List<Ingredient> _recipe;

  Product._(this._name, this._price);

  factory Product(String name, double price,
      {ProductID productId, int quantity, List<Ingredient> recipe}) {
    var product = Product._(name, price);

    product._id = productId;
    product._quantity = quantity;
    product._recipe = recipe;

    return product;
  }

  String get name => _name;

  double get price => _price;

  int get quantity => _quantity;

  List<Ingredient> get recipe => _recipe;

  ProductID get id => _id;
}
