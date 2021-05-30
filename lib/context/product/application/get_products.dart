import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/domain/product_repository.dart';

class GetProducts {
  final ProductRepository _productRepository;

  GetProducts(this._productRepository);

  Future<List<Product>> run() async {
    return await _productRepository.getProducts();
  }
}
