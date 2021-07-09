part of category;

abstract class CategoryRepository {
  Future<Category> addCategory(Category category) ;
  Future<List<Category>> getCategories();
}
