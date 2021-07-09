part of category;

class CategoryInMemory implements CategoryRepository {
  static List<Category> _categories = <Category>[
    Category(1, 'Fruta', DateTime.now(), DateTime.now()),
    Category(2, 'Verdura', DateTime.now(), DateTime.now()),
  ];

  @override
  Future<Category> addCategory(Category category) {
    CategoryInMemory._categories.add(category);
    return Future.value(category);
  }

  @override
  Future<List<Category>> getCategories() async {
    // TODO
    var categories = CategoryInMemory._categories;
    var priducts = await GetProducts(ProductsInMemory()).run();
    var categoriesWithProducts = categories.map((category) {
      priducts.forEach((product) {
        if (product.idCategory == category.id) {
          if (!category.products.contains(product)) {
            category.addProduct = product;
          }
        }
      });
      return category;
    }).toList();

    return Future.value(categoriesWithProducts);
  }
}
