import 'package:pos/contexts/pos/products/domain/product.dart';
import 'package:pos/contexts/pos/products/domain/product_repository.dart';

class AddProduct {
  ProductsRepository _repository;

  AddProduct(this._repository);

  Future<Product> run(Product product) async {
    return await _repository.addProduct(product);
  }
}
