part of '../home_screen.dart';

enum HOME_CONTAINERS {
  PRODUCTS,
  CASHIER,
  CATEGORIES,
}

class HomeScreenController extends GetxController {
  final Rx<Container> container = Container(
    alignment: Alignment.center,
    child: Text('Welcome'),
  ).obs;

  changeContainer(HOME_CONTAINERS newContainer) {
    if (newContainer == HOME_CONTAINERS.PRODUCTS)
      container.value = Container(child: ProductScreen());
    else if (newContainer == HOME_CONTAINERS.CASHIER)
      container.value = Container(child: CashRegisterScreen());
    else if (newContainer == HOME_CONTAINERS.CATEGORIES)
      container.value = Container(child: CategoryScreen());

    Get.back();
  }
}
