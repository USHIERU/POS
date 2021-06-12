import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'controllers/user_screen_controller.dart';

class UserScreen extends GetResponsiveView<UserScreenController> {
  final UserScreenController controller = Get.put(UserScreenController());

  @override
  Widget phone() {
    return Container();
  }

  @override
  Widget tablet() {
    return Container();
  }

  @override
  Widget desktop() {
    return Container();
  }
}
