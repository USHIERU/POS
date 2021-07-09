part of product;

class ProductsInMemory implements ProductRepository {
  static List<Product> _products = <Product>[
    Product(Uuid(), 'Tomate', 10, 1),
    Product(Uuid(), 'Manzana', 15, 1),
    Product(Uuid(), 'Aguacate', 25, 1),
    Product(Uuid(), 'Toronja', 20, 1),
    Product(Uuid(), 'Calabaza', 20, 2),
    Product(Uuid(), 'Zanahoria', 20, 2),
  ];

  @override
  Future<List<Product>> getProducts() {
    return Future.value(ProductsInMemory._products);
  }

  @override
  Future<Product> save(Product product) {
    ProductsInMemory._products = [...ProductsInMemory._products, product];
    return Future.value(product);
  }
}
