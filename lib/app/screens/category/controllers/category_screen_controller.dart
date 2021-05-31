part of '../category_screen.dart';

class CategoryScreenController extends GetxController {
  RxList<Category> categories = <Category>[].obs;

  CategoryScreenController() {
    getCategories();
  }

  void getCategories() {
    GetCategories(CategoryInMemory())
        .run()
        .then((value) => categories.value = value);
  }

  void addCategory(Category category) {
    AddCategory(CategoryInMemory())
        .run(category)
        .then((value) => getCategories());
  }
}
