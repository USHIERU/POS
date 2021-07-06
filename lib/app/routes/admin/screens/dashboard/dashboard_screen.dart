import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'controllers/dashboard_screen_controller.dart';

class DashboardScreen extends GetResponsiveView<DashboardScreenController> {
  final DashboardScreenController controller =
      Get.put(DashboardScreenController());

  @override
  Widget phone() {
    return Container(
      alignment: Alignment.center,
      child: Text('Welcome'),
    );
  }

  @override
  Widget tablet() {
    return Container(
      alignment: Alignment.center,
      child: Text('Welcome'),
    );
  }

  @override
  Widget desktop() {
    return Container(
      alignment: Alignment.center,
      child: Text('Welcome'),
    );
  }
}
