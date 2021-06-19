import 'package:pos/context/category/domain/category.dart';

abstract class CategoryRepository {
  Future<Category> addCategory(Category category) ;
  Future<List<Category>> getCategories();
}
