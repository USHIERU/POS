part of category_screen;

class CategoryScreenController extends GetxController {
  RxList<Context.Category> categories = <Context.Category>[].obs;

  CategoryScreenController() {
    getCategories();
  }

  void getCategories() {
    Context.GetCategories(Context.CategoryInMemory())
        .run()
        .then((value) => categories.value = value);
  }

  void addCategory(Context.Category category) {
    Context.AddCategory(Context.CategoryInMemory())
        .run(category)
        .then((value) => getCategories());
  }
}
