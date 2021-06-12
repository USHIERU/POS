import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/screens/cash_register/cash_register_screen.dart';
import 'package:pos/app/screens/category/category_screen.dart';
import 'package:pos/app/screens/dashboard/dashboard_screen.dart';
import 'package:pos/app/screens/product/product_screen.dart';
import 'package:pos/app/widgets/my_buttons.dart';

part 'controllers/home_screen_controller.dart';

class HomeLayout extends GetResponsiveView<HomeLayoutController> {
  static final routeName = 'home';
  final HomeLayoutController controller = Get.put(HomeLayoutController());

  @override
  Widget phone() {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              HOME_CONTAINERS.values.length,
              (index) => MyFlatButton(
                HOME_CONTAINERS.values[index].toString().substring(
                    HOME_CONTAINERS.values[index].toString().indexOf('.') + 1),
                () => controller.changeContainer(HOME_CONTAINERS.values[index]),
              ),
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
        child: Container(
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              HOME_CONTAINERS.values.length,
              (index) => MyFlatButton(
                HOME_CONTAINERS.values[index].toString().substring(
                    HOME_CONTAINERS.values[index].toString().indexOf('.') + 1),
                () => controller.changeContainer(HOME_CONTAINERS.values[index]),
              ),
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
            width: 200,
            height: double.maxFinite,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                HOME_CONTAINERS.values.length,
                (index) => MyFlatButton(
                  HOME_CONTAINERS.values[index].toString().substring(
                      HOME_CONTAINERS.values[index].toString().indexOf('.') +
                          1),
                  () =>
                      controller.changeContainer(HOME_CONTAINERS.values[index]),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 70,
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