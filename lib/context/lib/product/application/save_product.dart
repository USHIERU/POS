part of product;

class SaveProduct {
  final ProductRepository _productRepository;

  SaveProduct(this._productRepository);

  Future<Product> run(Product product) async =>
      await _productRepository.save(product);
}
