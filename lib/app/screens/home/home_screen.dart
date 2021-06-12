import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/screens/home/views/cash_register/cash_register_screen.dart';
import 'package:pos/app/screens/home/views/category/category_screen.dart';
import 'package:pos/app/screens/home/views/product/product_screen.dart';

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
          children: List.generate(
            HOME_CONTAINERS.values.length,
            (index) => ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.values[index]),
              child: Text(HOME_CONTAINERS.values[index].toString().substring(
                  HOME_CONTAINERS.values[index].toString().indexOf('.') + 1)),
            ),
          ),
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
          children: List.generate(
            HOME_CONTAINERS.values.length,
            (index) => ElevatedButton(
              onPressed: () =>
                  controller.changeContainer(HOME_CONTAINERS.values[index]),
              child: Text(HOME_CONTAINERS.values[index].toString().substring(
                  HOME_CONTAINERS.values[index].toString().indexOf('.') + 1)),
            ),
          ),
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
              children: List.generate(
                HOME_CONTAINERS.values.length,
                (index) => ElevatedButton(
                  onPressed: () =>
                      controller.changeContainer(HOME_CONTAINERS.values[index]),
                  child: Text(HOME_CONTAINERS.values[index]
                      .toString()
                      .substring(HOME_CONTAINERS.values[index]
                              .toString()
                              .indexOf('.') +
                          1)),
                ),
              ),
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