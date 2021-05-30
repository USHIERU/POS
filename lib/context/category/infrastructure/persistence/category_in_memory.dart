import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/domain/category_repository.dart';

class CategoryInMemory implements CategoryRepository {
  static List<Category> _categories = <Category>[];

  @override
  Future<Category> addCategory(Category category) {
    CategoryInMemory._categories.add(category);
    return Future.value(category);
  }

  @override
  Future<List<Category>> getCategories() {
    return Future.value(CategoryInMemory._categories);
  }
}
