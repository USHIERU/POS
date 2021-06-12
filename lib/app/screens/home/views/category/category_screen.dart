import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/category/application/add_category.dart';
import 'package:pos/context/category/application/get_categories.dart';
import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/infrastructure/persistence/category_in_memory.dart';

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
              Category(3, 'newCategory', DateTime.now(), DateTime.now())),
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
  Widget tablet() {
    return Column(
      children: [],
    );
  }

  @override
  Widget desktop() {
    return Column(
      children: [],
    );
  }
}
