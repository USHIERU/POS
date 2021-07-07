part of waiter_screen;

class WaiterScreenController extends GetxController {
  RxList<Domain.Table> tables = RxList<Domain.Table>.empty(growable: true);

  WaiterScreenController() {
    GetTables(POSConfig().factory.getTableRepository)
        .run()
        .then((tableList) => tables.value = tableList);
  }

  void onTapTable() {
    Get.toNamed(CashRegisterScreen.routeName);
  }
}
