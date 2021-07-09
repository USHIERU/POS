part of product_screen;

class ProductScreenController extends GetxController {
  RxList<Context.Product> products = <Context.Product>[].obs;
  RxBool isLoading = true.obs;

  void getProducts() {
    Context.GetProducts(POSConfig().factory.getProductRepository)
        .run()
        .then((_products) {
      isLoading.value = false;
      products.value = _products;
    });
  }

  void addProduct() {
    // SaveProduct(POSConfig().factory.getProductRepository)
    //     .run(Product.fromPrimitives('name', 15, ))
    //     .then((_product) => getProducts());
  }
}
