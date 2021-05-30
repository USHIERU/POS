part of '../cash_register_screen.dart';

class CashRegisterScreenController extends GetxController {
  RxList<Product> products = <Product>[].obs;
  RxList<Product> cart = <Product>[].obs;
  RxDouble price = 0.0.obs;

  void getProducts() {
    GetProducts(ProductsInMemery())
        .run()
        .then((_products) => products.value = _products);
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
