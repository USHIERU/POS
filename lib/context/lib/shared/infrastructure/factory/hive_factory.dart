part of shared;

class HiveFactory extends AbstractFactoryRepository {
  @override
  CartRepository get getCartRepository => throw UnimplementedError();

  @override
  CategoryRepository get getCategoryRepository => throw UnimplementedError();

  @override
  ProductRepository get getProductRepository => throw UnimplementedError();

  @override
  SessionRepository get getSessionRepository => throw UnimplementedError();

  @override
  TableRepository get getTableRepository => throw UnimplementedError();

  @override
  UserRepository get getUserRepository => throw UnimplementedError();
}
