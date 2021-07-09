part of cash_register;

class CashRegisterScreenController extends GetxController {
  late final Context.Table table;
  RxList<Context.Category> categorires = <Context.Category>[].obs;
  RxList<Context.CartProduct> cartProducts =
      RxList<Context.CartProduct>.empty();
  RxList<Context.Product> products = <Context.Product>[].obs;
  RxDouble total = 0.0.obs;

  CashRegisterScreenController() {
    table = Get.arguments;
    _getCart();
    getCategorys();
  }

  void getCategorys() {
    Context.GetCategories(POSConfig().factory.getCategoryRepository)
        .run()
        .then((_categorires) {
      categorires.value = _categorires;
      showProductsFromCategory(_categorires[0]);
    });
  }

  void showProductsFromCategory(Context.Category category) {
    products.value = category.products;
  }

  void addToCart(Context.Product product) {
    Context.AddCartProduct(POSConfig().factory.getCartRepository)
        .run(Context.CartProduct(product), table)
        .then((_) => _getCart());
  }

  void substractItemToCart(Context.CartProduct cartProduct) {
    Context.SubstractProductCart(POSConfig().factory.getCartRepository)
        .run(cartProduct, table)
        .then((_) => _getCart());
  }

  void addItemToCart(Context.CartProduct cartProduct) {
    addToCart(cartProduct.product);
  }

  void clearCart() {
    // TODO
  }

  void _getCart() {
    Context.GetCart(POSConfig().factory.getCartRepository)
        .run(table)
        .then((cart) => cartProducts.value = cart.products)
        .then(_updatePrice)
        .then((_) => cartProducts.refresh());
  }

  void _updatePrice(List<Context.CartProduct> cart) {
    double totalAux = 0;
    cart.forEach((cartProduct) =>
        totalAux += (cartProduct.product.price * cartProduct.quantity));
    total.value = totalAux;
  }
}
