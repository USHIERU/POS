part of cart;

class CartProduct {
  final Product product;
  int _quantity = 1;

  CartProduct(this.product);

  void add() => _quantity++;
  void subtract() => _quantity == 0 ? null : _quantity--;

  int get quantity => _quantity;

  @override
  String toString() =>
      'CartProduct { Product: $product, Quantity: $_quantity }';
}
