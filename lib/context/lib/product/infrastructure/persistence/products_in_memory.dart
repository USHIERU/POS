part of product;

class ProductsInMemery implements ProductRepository {
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
    return Future.value(ProductsInMemery._products);
  }

  @override
  Future<Product> save(Product product) {
    ProductsInMemery._products = [...ProductsInMemery._products, product];
    return Future.value(product);
  }
}
