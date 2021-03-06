class Ingredient {
  String _name;
  int _quantity;
  double _price;

  Ingredient(this._name, this._price, this._quantity);

  get name => _name;

  get quantity => _quantity;

  get price => _price;
}
