import 'package:pos/context/product/domain/product.dart';

abstract class ProductRepository {
  Future<Product> save(Product product) => null;
  Future<List<Product>> getProducts() => null;
}
