library category_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:context/context.dart' as Context;

part 'controllers/category_screen_controller.dart';

class CategoryScreen extends GetResponsiveView<CategoryScreenController> {
  final CategoryScreenController controller =
      Get.put(CategoryScreenController());

  @override
  Widget phone() {
    return Column(
      children: [
        Text('Add Category'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: () => controller.addCategory(
              Context.Category(3, 'newCategory', DateTime.now(), DateTime.now())),
          child: Text('Add Category'),
        ),
        Obx(
          () => Column(
            children: List.generate(
              controller.categories.length,
              (index) =>
                  Container(child: Text(controller.categories[index].name)),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget desktop() {
    return Column(
      children: [],
    );
  }
}
