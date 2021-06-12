part of '../home_layout.dart';

enum HOME_CONTAINERS {
  DASHBOARD,
  PRODUCTS,
  CASHIER,
  CATEGORIES,
}

class HomeLayoutController extends GetxController {
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

  closeSession(){
     Get.offAllNamed(LoginScreen.routeName);
  }
}
