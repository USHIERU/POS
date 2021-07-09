part of shared;

class InMemoryFactory extends AbstractFactoryRepository {
 CartRepository _cartRepository = CartInMemory();
 CategoryInMemory _categoryInMemory = CategoryInMemory();
 ProductsInMemory _productsInMemory = ProductsInMemory();
 SessionInMemory _sessionInMemory = SessionInMemory();
 TableInMemory _tableInMemory = TableInMemory();
 UserInMemory _userInMemory = UserInMemory();

  @override
  CartRepository get getCartRepository => _cartRepository;

  @override
  CategoryRepository get getCategoryRepository => _categoryInMemory;

  @override
  ProductRepository get getProductRepository => _productsInMemory;

  @override
  SessionRepository get getSessionRepository => _sessionInMemory;

  @override
  TableRepository get getTableRepository => _tableInMemory;

  @override
  UserRepository get getUserRepository => _userInMemory;
}
