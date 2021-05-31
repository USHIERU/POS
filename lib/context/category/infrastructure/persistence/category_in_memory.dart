import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/domain/category_repository.dart';
import 'package:pos/context/product/application/get_products.dart';
import 'package:pos/context/product/infrastructure/persistence/products_in_memory.dart';

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
    var categories = CategoryInMemory._categories;
    var priducts = await GetProducts(ProductsInMemery()).run();
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
