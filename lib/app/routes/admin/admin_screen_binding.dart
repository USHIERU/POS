part of admin_screen;

class AdminScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdminScreenController>(() => AdminScreenController());
  }
}
