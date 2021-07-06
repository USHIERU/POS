part of '../product_screen.dart';

class ProductScreenController extends GetxController {
  /// @inmutable
  final ProductsHive productsHive = ProductsHive();
  
  RxList<Product> products = <Product>[].obs;
  RxBool isLoading = true.obs;

  ProductScreenController() {
    _open();
  }

  void _open() async {
    var readyToLoad = true;
    while (readyToLoad) {
      if (productsHive.isOpen) {
        getProducts();
        readyToLoad = false;
      }
      await Future.delayed(Duration(milliseconds: 200));
    }
  }

  void getProducts() {
    GetProducts(productsHive).run().then((_products) {
      isLoading.value = false;
      products.value = _products;
    });
  }

  void addProduct(Product product) {
    SaveProduct(productsHive).run(product).then((_product) => getProducts());
  }
}
