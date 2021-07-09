part of category;

class AddCategory {
  final CategoryRepository _categoryRepository;

  AddCategory(this._categoryRepository);

  Future<Category> run(Category category) async =>
      await _categoryRepository.addCategory(category);
}
