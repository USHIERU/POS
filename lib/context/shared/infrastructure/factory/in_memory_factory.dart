import 'package:pos/context/category/infrastructure/persistence/category_in_memory.dart';
import 'package:pos/context/product/infrastructure/persistence/products_in_memory.dart';
import 'package:pos/context/session/domain/session_repository.dart';
import 'package:pos/context/product/domain/product_repository.dart';
import 'package:pos/context/category/domain/category_repository.dart';
import 'package:pos/context/cart/domain/cart_product_repository.dart';
import 'package:pos/context/session/infrastructure/persistence/session_in_memory.dart';
import 'package:pos/context/shared/domain/abstract_factory_repository.dart';
import 'package:pos/context/table/domain/table_repository.dart';
import 'package:pos/context/table/infrastructure/persistence/in_memory/in_memory_table_repository.dart';

class InMemoryFactory extends AbstractFactoryRepository {
  @override
  CartProductRepository get getCartRepository => throw UnimplementedError();

  @override
  CategoryRepository get getCategoryRepository => CategoryInMemory();

  @override
  ProductRepository get getProductRepository => ProductsInMemery();

  @override
  SessionRepository get getSessionRepository => SessionInMemory();

  @override
  TableRepository get getTableRepository => InMemoryTableRepository();
}
