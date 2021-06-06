import 'package:hive/hive.dart';
import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/domain/product_repository.dart';
import 'package:pos/context/shared/infrastructure/persistence/hive/hive_repository.dart';

class ProductsHive extends HiveRepository<Product>
    implements ProductRepository {
  static final String boxName = 'ProductsHive';
  bool isOpen = false;

  ProductsHive() : super(boxName, ProductAdapter());

  @override
  Future<List<Product>> getProducts() async {
    var box = Hive.box<Product>(boxName);
    return box.values.toList();
  }

  @override
  Future<Product> save(Product product) async {
    var box = Hive.box<Product>(boxName);
    await box.add(product);
    return product;
  }
}
