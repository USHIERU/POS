import 'package:pos/context/cart/domain/cart_product.dart';

abstract class CartProductRepository {
  Future<List<CartProduct>> getCartProdcuts();
  addCartProduct(CartProduct cartProduct);
}