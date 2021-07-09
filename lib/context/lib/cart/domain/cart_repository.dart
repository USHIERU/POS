part of cart;

abstract class CartRepository {
  Future<Cart> getCart(Table table);
  Future<List<CartProduct>> getCartProducts(Table table);
  Future<void> addCartProduct(CartProduct cartProduct, Table table);
  Future<void> subtractCartProduct(CartProduct cartProduct, Table table);
}