part of shared;

abstract class AbstractFactoryRepository {
  CartRepository get getCartRepository;
  CategoryRepository get getCategoryRepository;
  ProductRepository get getProductRepository;
  SessionRepository get getSessionRepository;
  TableRepository get getTableRepository;
  UserRepository get getUserRepository;
}