part of '../cash_register_screen.dart';

class CashRegisterScreenController extends GetxController {
  RxList<Category> categorires = <Category>[].obs;
  RxList<Product> products = <Product>[].obs;
  RxList<Product> cart = <Product>[].obs;
  RxDouble price = 0.0.obs;

  void getCategorys() {
    GetCategories(CategoryInMemory())
        .run()
        .then((_categorires) => categorires.value = _categorires);
  }

  void showProductsFromCategory(Category category) {
    products.value = category.products;
  }

  void addToCart(Product product) {
    // ignore: invalid_use_of_protected_member
    var newCart = RxList<Product>.from(cart.value)..add(product);
    double totalPrice = 0;

    newCart.forEach((newCartProduct) => totalPrice += newCartProduct.price);

    cart.value = newCart;
    price.value = totalPrice;
  }
}
