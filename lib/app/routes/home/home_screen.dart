import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/screens/cash_register/cash_register_screen.dart';
import 'package:pos/app/screens/product/product_screen.dart';

part 'controllers/home_screen_controller.dart';

class HomeScreen extends GetResponsiveView<HomeScreenController> {
  static final routeName = 'home';
  final HomeScreenController controller = Get.put(HomeScreenController());

  @override
  Widget phone() {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.PRODUCTS),
              child: Text('Products'),
            ),
            ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.CASHIER),
              child: Text('Cashier'),
            ),
          ],
        ),
      ),
      body: Obx(() => controller.container.value),
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.PRODUCTS),
              child: Text('Products'),
            ),
            ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.CASHIER),
              child: Text('Cashier'),
            ),
          ],
        ),
      ),
      body: Obx(() => controller.container.value),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 150,
            height: double.maxFinite,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      controller.changeContainer(HOME_CONTAINERS.PRODUCTS),
                  child: Text('Products'),
                ),
                ElevatedButton(
                  onPressed: () =>
                      controller.changeContainer(HOME_CONTAINERS.CASHIER),
                  child: Text('Cashier'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 50,
                  color: Colors.blue,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Obx(() => controller.container.value),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
