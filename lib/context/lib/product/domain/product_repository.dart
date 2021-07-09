part of product;

abstract class ProductRepository {
  Future<Product> save(Product product);
  Future<List<Product>> getProducts();
}
