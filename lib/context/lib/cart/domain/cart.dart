part of cart;

class Cart {
  List<CartProduct> _products = List<CartProduct>.empty();

  Cart({List<CartProduct>? products}) {
    if (products is List<CartProduct>) _products = products;
  }

  List<CartProduct> get products => _products;

  @override
  String toString() {
    return 'Cart { products: $_products}';
  }
}
