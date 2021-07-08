import 'package:pos/context/cart/domain/cart_product_repository.dart';
import 'package:pos/context/category/domain/category_repository.dart';
import 'package:pos/context/product/domain/product_repository.dart';
import 'package:pos/context/session/domain/session_repository.dart';
import 'package:pos/context/table/domain/table_repository.dart';
import 'package:pos/context/user/domain/user_repository.dart';

abstract class AbstractFactoryRepository {
  CartProductRepository get getCartRepository;
  CategoryRepository get getCategoryRepository;
  ProductRepository get getProductRepository;
  SessionRepository get getSessionRepository;
  TableRepository get getTableRepository;
  UserRepository get getUserRepository;
}