import 'package:pos/context/product/domain/product.dart';

abstract class ProductRepository {
  Future<Product> save(Product product) => Future.value(product);
  Future<List<Product>> getProducts() => Future.value([Product.empty()]);
}
