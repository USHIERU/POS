part of cart;

abstract class CartRepository {
  Future<Cart> addCart(Table table);
  ///❗ Throwable function
  Future<Cart> getCart(Table table);
  Future<List<CartProduct>> getCartProducts(Table table);
  Future<void> addCartProduct(CartProduct cartProduct, Table table);
}