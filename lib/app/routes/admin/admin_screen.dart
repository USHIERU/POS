library admin_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/app/routes/cash_register/cash_register_screen.dart';
import 'package:pos/app/routes/admin/screens/category/category_screen.dart';
import 'package:pos/app/routes/admin/screens/dashboard/dashboard_screen.dart';
import 'package:pos/app/routes/admin/screens/product/product_screen.dart';
import 'package:pos/app/widgets/my_buttons.dart';

part 'admin_screen_controller.dart';
part 'admin_screen_binding.dart';

class AdminScreen extends GetResponsiveView<AdminScreenController> {
  static final routeName = 'admin';

  Widget _showPopupMenuChild(String string, void Function() onTap) {
    return Container(
      child: GestureDetector(
        onTap: onTap,
        child: Text(string),
      ),
    );
  }

  void _showPopupMenu(BuildContext? context) async {
    if (context == null) return;
    await showMenu(
      context: context,
      position: RelativeRect.fromLTRB(double.maxFinite, 65, 30, 0),
      items: [
        PopupMenuItem(
            child: _showPopupMenuChild('Profile', () {
              Get.back();
            }),
            value: 'Profile'),
        PopupMenuItem(
          child: PopupMenuDivider(height: 1),
          height: 1,
          enabled: false,
        ),
        PopupMenuItem(
            child: _showPopupMenuChild('Sign out', controller.closeSession),
            value: 'Sign out'),
      ],
      elevation: 8.0,
    );
  }

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
                () => controller.changeContainer(HOME_CONTAINERS.values[index]),
                text: HOME_CONTAINERS.values[index].toString().substring(
                    HOME_CONTAINERS.values[index].toString().indexOf('.') + 1),
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
                  () =>
                      controller.changeContainer(HOME_CONTAINERS.values[index]),
                  text: HOME_CONTAINERS.values[index].toString().substring(
                      HOME_CONTAINERS.values[index].toString().indexOf('.') +
                          1),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  width: double.maxFinite,
                  height: 70,
                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            _showPopupMenu(Get.context);
                          },
                          child: Row(mainAxisSize: MainAxisSize.min, children: [
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(500),
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              size: 30,
                            ),
                          ]),
                        ),
                      )
                    ],
                  ),
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
