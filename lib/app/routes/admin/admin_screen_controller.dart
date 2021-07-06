part of admin_screen;

enum HOME_CONTAINERS {
  DASHBOARD,
  TABLES,
  PRODUCTS,
  CASHIER,
  CATEGORIES,
}

class AdminScreenController extends GetxController {
  final Rx<Container> container = Container(child: DashboardScreen()).obs;

  changeContainer(HOME_CONTAINERS newContainer) {
    switch (newContainer) {
      case HOME_CONTAINERS.DASHBOARD:
        container.value = Container(child: DashboardScreen());
        break;
      case HOME_CONTAINERS.CASHIER:
        container.value = Container(child: CashRegisterScreen());
        break;
      case HOME_CONTAINERS.PRODUCTS:
        container.value = Container(child: ProductScreen());
        break;
      case HOME_CONTAINERS.CATEGORIES:
        container.value = Container(child: CategoryScreen());
        break;
      default:
        container.value = Container(child: DashboardScreen());
    }

    Get.back();
  }

  closeSession() {
    Get.offAllNamed(LoginScreen.routeName);
  }
}
