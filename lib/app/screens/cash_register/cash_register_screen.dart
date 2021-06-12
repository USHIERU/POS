import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/category/application/get_categories.dart';
import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/infrastructure/persistence/category_in_memory.dart';
import 'package:pos/context/product/domain/product.dart';

part 'controllers/cash_register_screen_controller.dart';

class CashRegisterScreen
    extends GetResponsiveView<CashRegisterScreenController> {
  final CashRegisterScreenController controller =
      Get.put(CashRegisterScreenController());

  @override
  Widget build(BuildContext context) {
    controller.getCategorys();
    return super.build(context);
  }

  @override
  Widget phone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => Wrap(
            children: List.generate(
              controller.categorires.length,
              (index) => ElevatedButton(
                onPressed: () => controller
                    .showProductsFromCategory(controller.categorires[index]),
                child: Text(controller.categorires[index].name),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.grey.shade200,
          width: double.maxFinite,
          height: 500,
          child: Obx(
            () => GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 8.0,
              children: List.generate(
                controller.products.length,
                (index) {
                  var product = controller.products[index];
                  return Center(
                    child: ElevatedButton(
                      onPressed: () {
                        controller.addToCart(product);
                      },
                      child: Text(product.name),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 30),
        Expanded(
          child: Obx(
            () => ListView(
              children: controller.cart
                  .map(
                    (product) => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(product.name),
                        Text(product.price.toString())
                      ],
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
        SizedBox(height: 30),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Total:'),
              Text(controller.price.toString()),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget tablet() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('cashier'),
      ],
    );
  }

  @override
  Widget desktop() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('cashier'),
      ],
    );
  }
}
