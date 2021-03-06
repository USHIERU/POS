import 'package:pos/context/pos/ingredients/domain/ingredient.dart';

class Product {
  String _name;
  double _price;
  int _quantity;
  List<Ingredient> _recipe;

  Product(this._name, this._price);

  get name => _name;

  get price => _price;

  get quantity => _quantity;
  set quantity(int quantity) => _quantity = quantity;

  get recipe => _recipe;
  set recipe(List<Ingredient> recipe) => _recipe = recipe;
}
