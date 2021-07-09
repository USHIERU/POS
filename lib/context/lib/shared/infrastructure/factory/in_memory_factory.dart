part of shared;

class InMemoryFactory extends AbstractFactoryRepository {
  @override
  CartRepository get getCartRepository => CartInMemory();

  @override
  CategoryRepository get getCategoryRepository => CategoryInMemory();

  @override
  ProductRepository get getProductRepository => ProductsInMemery();

  @override
  SessionRepository get getSessionRepository => SessionInMemory();

  @override
  TableRepository get getTableRepository => InMemoryTableRepository();

  @override
  UserRepository get getUserRepository => UserInMemory();
}
