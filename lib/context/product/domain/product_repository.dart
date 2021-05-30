import 'package:pos/context/product/domain/product.dart';

abstract class ProductRepository {
  Future<Product> save(Product product) {
    return Future.value(Product.empty());
  }

  Future<List<Product>> getProducts() {
    return Future.value([Product.empty()]);
  }
}
