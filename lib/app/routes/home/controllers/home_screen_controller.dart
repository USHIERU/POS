part of '../home_screen.dart';

enum HOME_CONTAINERS { PRODUCTS }

class HomeScreenController extends GetxController {
  final Rx<Container> container = Container(
    alignment: Alignment.center,
    child: Text('Welcome'),
  ).obs;

  changeContainer(HOME_CONTAINERS newContainer) {
    if (newContainer == HOME_CONTAINERS.PRODUCTS)
      container.value = Container(child: ProductScreen());

    Get.back();
  }
}
