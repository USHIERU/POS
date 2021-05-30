import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/product/application/get_products.dart';
import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/infrastructure/persistence/products_in_memory.dart';

part 'controllers/cash_register_screen_controller.dart';

class CashRegisterScreen extends GetResponsiveView<CashRegisterScreenController> {
  final CashRegisterScreenController controller = Get.put(CashRegisterScreenController());

  @override
  Widget build(BuildContext context) {
    controller.getProducts();
    return super.build(context);
  }

  @override
  Widget phone() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
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
