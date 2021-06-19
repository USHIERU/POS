import 'package:pos/context/product/domain/product.dart';

abstract class ProductRepository {
  Future<Product> save(Product product);
  Future<List<Product>> getProducts();
}
