import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/domain/product_repository.dart';

class SaveProduct {
  final ProductRepository _productRepository;

  SaveProduct(this._productRepository);

  Future<Product> run(Product product) async =>
      await _productRepository.save(product);
}
