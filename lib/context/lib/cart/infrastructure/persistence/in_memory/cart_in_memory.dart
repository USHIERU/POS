part of cart;

class CartInMemory extends CartRepository {
  static Map<String, Cart> _carts = Map<String, Cart>();

  @override
  Future<Cart> addCart(Table table) async {
    var cart = Cart();
    _carts[table.id] = cart;
    return cart;
  }

  @override
  Future<Cart> getCart(Table table) async {
    var cart = _carts[table.id];
    if (cart is Cart) return cart;
    throw '<CartInMemory> Cart not found';
  }

  @override
  Future<void> addCartProduct(CartProduct cartProduct, Table table) async {
    var cart = _carts[table.id];
    if (cart is Cart) {
      var cartProductModified = cart.products.firstWhere((product) {
        var productFound = product.product.id == cartProduct.product.id;
        product.add();
        return productFound;
      });
      if(cartProductModified is CartProduct) return;
      _carts[table.id] = Cart(products: [...cart.products, cartProduct]);
    } else {
      _carts[table.id] = Cart(products: [cartProduct]);
    }
  }

  @override
  Future<List<CartProduct>> getCartProducts(Table table) async {
    return _carts[table.id]?.products ?? List<CartProduct>.empty();
  }
}
