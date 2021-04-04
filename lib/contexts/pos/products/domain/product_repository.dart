import 'package:pos/contexts/pos/products/domain/product.dart';
import 'package:pos/contexts/pos/products/domain/product_id.dart';

abstract class ProductsRepository {
  Future<Product> getProductByID(ProductID productID) => null;
  Future<List<Product>> getProducts() => null;
  Future<Product> addProduct(Product product) => null;
}
