part of category;

class GetCategories {
  final CategoryRepository _categoryRepository;

  GetCategories(this._categoryRepository);

  Future<List<Category>> run() async => await _categoryRepository.getCategories();
}
