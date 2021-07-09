part of cash_register;

class CashRegisterScreenController extends GetxController {
  late final Context.Table table;
  late final Context.Cart cart;
  RxList<Context.Category> categorires = <Context.Category>[].obs;
  RxList<Context.Product> products = <Context.Product>[].obs;
  RxDouble price = 0.0.obs;

  CashRegisterScreenController() {
    table = Get.arguments.table;
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
  }

  void substractItemToCart(Context.CartProduct catProduct) {
  }

  void addItemToCart(Context.CartProduct catProduct) {
  }

  void clearCart() {
  }

  void _updatePrice() {
  }
}
