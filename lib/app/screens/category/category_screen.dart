import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/category/domain/category.dart';

part 'controllers/category_screen_controller.dart';

class CategoryScreen extends GetResponsiveView<CategoryScreenController> {
  final CategoryScreenController controller = Get.put(CategoryScreenController());

  @override
  Widget phone() {
    return Column(
      children: [
      ],
    );
  }

  @override
  Widget tablet() {
    return Column(
      children: [
      ],
    );
  }

  @override
  Widget desktop() {
    return Column(
      children: [
      ],
    );
  }
}
