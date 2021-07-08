part of waiter_screen;

class WaiterScreenController extends GetxController {
  RxList<Domain.Table> tables = RxList<Domain.Table>.empty(growable: true);
  RxBool isNumberPadVisible = false.obs;

  WaiterScreenController() {
    GetTables(POSConfig().factory.getTableRepository)
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
