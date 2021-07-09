library product_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:context/context.dart' as Context;

part 'controllers/product_screen_controller.dart';

class ProductScreen extends GetResponsiveView<ProductScreenController> {
  final ProductScreenController controller = Get.put(ProductScreenController());

  @override
  Widget phone() {
    return Column(
      children: [
        Text('add product'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: controller.addProduct,
          child: Text('Add Product'),
        ),
        Divider(),
        Text('Products'),
        Obx(() {
          if (controller.isLoading.value) return CircularProgressIndicator();
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ProductName',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('ProductPrice',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
              for (var product in controller.products)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.name),
                    Text(product.price.toString()),
                  ],
                ),
            ],
          );
        }),
      ],
    );
  }

  @override
  Widget tablet() {
    return Column(
      children: [
        Text('add product'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: controller.addProduct,
          child: Text('Add Product'),
        ),
        Divider(),
        Text('Products'),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: controller.products
                .map(
                  (element) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ProductName: ${element.name}'),
                      Text('ProductPrice: ${element.price}'),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }

  @override
  Widget desktop() {
    return Column(
      children: [
        Text('add product'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: controller.addProduct,
          child: Text('Add Product'),
        ),
        Divider(),
        Text('Products'),
        Obx(
          () => Column(
            mainAxisSize: MainAxisSize.min,
            children: controller.products
                .map(
                  (element) => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('ProductName: ${element.name}'),
                      Text('ProductPrice: ${element.price}'),
                    ],
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
