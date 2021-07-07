import 'package:pos/context/session/domain/session_repository.dart';
import 'package:pos/context/product/domain/product_repository.dart';
import 'package:pos/context/category/domain/category_repository.dart';
import 'package:pos/context/cart/domain/cart_product_repository.dart';
import 'package:pos/context/shared/domain/abstract_factory_repository.dart';
import 'package:pos/context/table/domain/table_repository.dart';

class HiveFactory extends AbstractFactoryRepository {
  @override
  CartProductRepository get getCartRepository => throw UnimplementedError();

  @override
  CategoryRepository get getCategoryRepository => throw UnimplementedError();

  @override
  ProductRepository get getProductRepository => throw UnimplementedError();

  @override
  SessionRepository get getSessionRepository => throw UnimplementedError();

  @override
  TableRepository get getTableRepository => throw UnimplementedError();
}
