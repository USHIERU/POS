import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/domain/product_repository.dart';

class ProductsInMemery implements ProductRepository {
  static List<Product> _products = <Product>[
    Product(0, 'Tomate', 10, 1),
    Product(1, 'Manzana', 15, 1),
    Product(2, 'Aguacate', 25, 1),
    Product(3, 'Toronja', 20, 1),
    Product(4, 'Calabaza', 20, 2),
    Product(5, 'Zanahoria', 20, 2),
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
