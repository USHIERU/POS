import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/context/product/application/get_products.dart';
import 'package:pos/context/product/application/save_product.dart';
import 'package:pos/context/product/domain/product.dart';
import 'package:pos/context/product/infrastructure/persistence/products_in_memory.dart';

part 'controllers/product_screen_controller.dart';

class ProductScreen extends GetResponsiveView<ProductScreenController> {
  static final routeName = 'home';
  final ProductScreenController controller = Get.put(ProductScreenController());

  @override
  Widget phone() {
    return Column(
      children: [
        Text('add product'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: () => controller.addProduct(Product('newProduct', 10)),
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
  Widget tablet() {
    return Column(
      children: [
        Text('add product'),
        TextFormField(),
        TextFormField(),
        ElevatedButton(
          onPressed: () => controller.addProduct(Product('newProduct', 10)),
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
          onPressed: () => controller.addProduct(Product('newProduct', 10)),
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
