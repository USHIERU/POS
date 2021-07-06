part of waiter_screen;

class WaiterScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WaiterScreenController>(() => WaiterScreenController());
  }
}