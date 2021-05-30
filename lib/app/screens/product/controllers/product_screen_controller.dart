part of '../product_screen.dart';

class ProductScreenController extends GetxController {
  RxList<Product> products = <Product>[].obs;

  ProductScreenController() {
    getProducts();
  }

  void getProducts() {
    GetProducts(ProductsInMemery())
        .run()
        .then((_products) => products.value = _products);
  }

  void addProduct(Product product) {
    SaveProduct(ProductsInMemery())
        .run(product)
        .then((_product) => getProducts());
  }
}
