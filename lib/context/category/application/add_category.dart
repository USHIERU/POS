import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/domain/category_repository.dart';

class AddCategory {
  final CategoryRepository _categoryRepository;

  AddCategory(this._categoryRepository);

  Future<Category> run(Category category) async =>
      await _categoryRepository.addCategory(category);
}
