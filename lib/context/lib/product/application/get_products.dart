part of product;

class GetProducts {
  final ProductRepository _productRepository;

  GetProducts(this._productRepository);

  Future<List<Product>> run() async => await _productRepository.getProducts();
}
