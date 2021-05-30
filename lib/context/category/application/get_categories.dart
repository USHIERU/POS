import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/domain/category_repository.dart';

class GetCategories {
  final CategoryRepository _categoryRepository;

  GetCategories(this._categoryRepository);

  Future<List<Category>> run() async => await _categoryRepository.getCategories();
}
