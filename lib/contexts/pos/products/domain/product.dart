import 'package:pos/contexts/pos/ingredients/domain/ingredient.dart';

class Product {
  String _name;
  double _price;
  int _quantity;
  List<Ingredient> _recipe;

  Product(this._name, this._price);

  get name => _name;

  get price => _price;

  // ignore: unnecessary_getters_setters
  get quantity => _quantity;
  // ignore: unnecessary_getters_setters
  set quantity(int quantity) => _quantity = quantity;

  // ignore: unnecessary_getters_setters
  get recipe => _recipe;
  // ignore: unnecessary_getters_setters
  set recipe(List<Ingredient> recipe) => _recipe = recipe;
}
