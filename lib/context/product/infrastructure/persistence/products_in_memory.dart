import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/domain/product_repository.dart';

class ProductsInMemery implements ProductRepository {
  static List<Product> _products = <Product>[
    Product('Tomate', 10),
    Product('Manzana', 15),
    Product('Aguacate', 25),
    Product('Toronja', 20),
  ];

  @override
  Future<List<Product>> getProducts() {
    return Future.value(ProductsInMemery._products);
  }

  @override
  Future<Product> save(Product product) {
    ProductsInMemery._products = [...ProductsInMemery._products, product];
    return Future.value(product);
  }
}
