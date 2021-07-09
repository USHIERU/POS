part of waiter_screen;

class WaiterScreenController extends GetxController {
  RxList<Context.Table> tables = RxList<Context.Table>.empty(growable: true);
  RxBool isNumberPadVisible = false.obs;

  WaiterScreenController() {
    Context.GetTables(POSConfig().factory.getTableRepository)
        .run()
        .then((tableList) => tables.value = tableList);
  }

  void onCloseNumberPad(){
    isNumberPadVisible.value = false;
  }

  void onTapTable() {
    isNumberPadVisible.value = true;
    // Get.toNamed(CashRegisterScreen.routeName);
  }
}
