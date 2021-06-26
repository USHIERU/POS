import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/category/application/get_categories.dart';
import 'package:pos/context/category/domain/category.dart';
import 'package:pos/context/category/infrastructure/persistence/category_in_memory.dart';
import 'package:pos/context/product/domain/product.dart';

part 'controllers/cash_register_screen_controller.dart';

class CashRegisterScreen
    extends GetResponsiveView<CashRegisterScreenController> {
  final bool isRoute;
  static final String routeName = 'CashRegisterScreen';
  final CashRegisterScreenController controller =
      Get.put(CashRegisterScreenController());

  CashRegisterScreen({Key? key, this.isRoute = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.getCategorys();

    if (isRoute)
      return Scaffold(
        body: super.build(context),
      );

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
  Widget desktop() {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Restorant Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                SizedBox(height: 30),
                Obx(
                  () => Wrap(
                    children: List.generate(
                      controller.categorires.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: ElevatedButton(
                          onPressed: () => controller.showProductsFromCategory(
                              controller.categorires[index]),
                          child: Text(controller.categorires[index].name),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Current Order',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 5),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Clear All'),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(Icons.settings),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: Colors.grey.shade300))),
            ),
          ),
        ],
      ),
    );
  }
}
