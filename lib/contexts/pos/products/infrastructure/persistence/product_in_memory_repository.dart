import 'package:pos/contexts/pos/products/domain/product.dart';
import 'package:pos/contexts/pos/products/domain/product_id.dart';
import 'package:pos/contexts/pos/products/domain/product_repository.dart';

class ProductInMemoryRepository implements ProductsRepository {
  static List<Product> _products = [];

  @override
  Future<Product> addProduct(Product product) {
    _products.add(product);

    var newProduct =
        Product(product.name, product.price, productId: ProductID('testID'));

    return Future.value(newProduct);
  }

  @override
  Future<Product> getProductByID(ProductID productID) {
    return Future.value(_products.firstWhere(
        (_product) => _product.id.toString() == productID.toString()));
  }

  @override
  Future<List<Product>> getProducts() {
    return Future.value(_products);
  }
}
