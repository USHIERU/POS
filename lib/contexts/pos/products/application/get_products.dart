import 'package:pos/contexts/pos/products/domain/product.dart';
import 'package:pos/contexts/pos/products/domain/product_repository.dart';

class GetProducts {
  ProductsRepository _repository;

  GetProducts(this._repository);

  Future<List<Product>> run() async {
    return await _repository.getProducts();
  }
}
