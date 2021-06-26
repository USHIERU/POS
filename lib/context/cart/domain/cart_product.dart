import 'package:pos/context/product/domain/product.dart';

class CartProduct {
  Product _product;
  int _quantity = 1;

  CartProduct(Product product) : this._product = product;

  void add() => _quantity += 1;
  void subtract() => _quantity > 0 ? _quantity -= 1 : null;

  int get quantity => _quantity;
  Product get product => _product;

  @override
  String toString() => 'CartProduct { Product: $_product, Quantity: $_quantity }';
}
