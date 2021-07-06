part of 'cash_register_screen.dart';

class CashRegisterScreenController extends GetxController {
  RxList<Category> categorires = <Category>[].obs;
  RxList<Product> products = <Product>[].obs;
  RxList<CartProduct> cart = <CartProduct>[].obs;
  RxDouble price = 0.0.obs;

  void getCategorys() {
    GetCategories(CategoryInMemory())
        .run()
        .then((_categorires) {
          categorires.value = _categorires;
          showProductsFromCategory(_categorires[0]);
        });
  }

  void showProductsFromCategory(Category category) {
    products.value = category.products;
  }

  void addToCart(Product product) {
    bool exist = false;
    final newCartList = List.generate(cart.length, (index) {
      if (cart[index].product.id == product.id) {
        exist = true;
        cart[index].add();
      }
      return cart[index];
    });
    var newCart = RxList<CartProduct>.from(newCartList);
    if (!exist) newCart.add(CartProduct(product));
    cart.value = newCart;
    _updatePrice();
  }

  void substractItemToCart(CartProduct catProduct) {
    final newCartList = List.generate(cart.length, (index) {
      if (cart[index].product.id == catProduct.product.id)
        cart[index].subtract();
      if (cart[index].quantity == 0) return null;
      return cart[index];
    });
    final newCart = RxList<CartProduct>.from(
        newCartList.where((newCartListItem) => newCartListItem != null));
    cart.value = newCart;
    _updatePrice();
  }

  void addItemToCart(CartProduct catProduct) {
    final newCartList = List.generate(cart.length, (index) {
      if (cart[index].product.id == catProduct.product.id) cart[index].add();
      return cart[index];
    });
    final newCart = RxList<CartProduct>.from(newCartList);
    cart.value = newCart;
    _updatePrice();
  }

  void clearCart() {
    final newCart = RxList<CartProduct>.empty();
    cart.value = newCart;
    price.value = 0;
  }

  void _updatePrice() {
    double totalPrice = 0;
    cart.forEach((newCartProduct) =>
        totalPrice += (newCartProduct.product.price * newCartProduct.quantity));
    price.value = totalPrice;
  }
}
