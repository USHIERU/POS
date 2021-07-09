library cash_register;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/widgets/my_buttons.dart';
import 'package:context/context.dart' as Context;

part 'cash_register_screen_controller.dart';

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
    return Container();
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
                SizedBox(height: 30),
                Expanded(
                  child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      var crossAxisCount = 1;
                      final width = constraints.maxWidth;
                      if (width > 1000) {
                        crossAxisCount = 8;
                      } else if (width > 800) {
                        crossAxisCount = 6;
                      } else if (width > 500) {
                        crossAxisCount = 4;
                      } else if (width > 300) {
                        crossAxisCount = 2;
                      }
                      return Obx(
                        () => GridView.count(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 4.0,
                          mainAxisSpacing: 8.0,
                          children: List.generate(
                            controller.products.length,
                            (index) {
                              var product = controller.products[index];
                              return MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () => controller.addToCart(product),
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            product.name,
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.centerRight,
                                            width: double.maxFinite,
                                            child: Text(
                                              '\$ ${product.price}',
                                              style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 350,
            padding: EdgeInsets.only(left: 10),
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
                        ElevatedButton(
                          onPressed: controller.clearCart,
                          child: Text('Clear All'),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: Icon(Icons.settings),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Expanded(
                    flex: 10,
                    child: Column(
                      children: [
                        Expanded(
                          child: Obx(
                            () => ListView(
                              // children: controller.cart
                              //     .map(
                              //       (cartProduct) => Padding(
                              //         padding: EdgeInsets.only(bottom: 5),
                              //         child: Row(
                              //           children: [
                              //             Expanded(
                              //               flex: 2,
                              //               child: Container(
                              //                 alignment: Alignment.centerLeft,
                              //                 child: Text(
                              //                   cartProduct.product.name,
                              //                   style: TextStyle(
                              //                     fontWeight: FontWeight.w500,
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //             SizedBox(width: 5),
                              //             Expanded(
                              //               flex: 3,
                              //               child: Row(
                              //                 mainAxisAlignment:
                              //                     MainAxisAlignment
                              //                         .spaceBetween,
                              //                 children: [
                              //                   MyFlatButton(
                              //                     () => controller
                              //                         .substractItemToCart(
                              //                             cartProduct),
                              //                     child: Icon(
                              //                         cartProduct.quantity > 1
                              //                             ? Icons
                              //                                 .horizontal_rule
                              //                             : Icons.delete),
                              //                     width: 15,
                              //                     height: 15,
                              //                   ),
                              //                   Text(
                              //                     cartProduct.quantity
                              //                         .toString(),
                              //                     style: TextStyle(
                              //                       fontWeight: FontWeight.w500,
                              //                     ),
                              //                   ),
                              //                   MyFlatButton(
                              //                     () =>
                              //                         controller.addItemToCart(
                              //                             cartProduct),
                              //                     child: Icon(Icons.add),
                              //                     width: 15,
                              //                     height: 15,
                              //                   ),
                              //                 ],
                              //               ),
                              //             ),
                              //             SizedBox(width: 5),
                              //             Expanded(
                              //               flex: 2,
                              //               child: Container(
                              //                 alignment: Alignment.centerRight,
                              //                 child: Text(
                              //                   '\$ ${cartProduct.product.price * cartProduct.quantity}',
                              //                   style: TextStyle(
                              //                     fontWeight: FontWeight.w500,
                              //                   ),
                              //                 ),
                              //               ),
                              //             ),
                              //           ],
                              //         ),
                              //       ),
                              //     )
                              //     .toList(),
                            ),
                          ),
                        ),
                        SizedBox(height: 30),
                        Obx(
                          () => Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total:',
                                style: TextStyle(fontSize: 30),
                              ),
                              Text(
                                '\$ ${controller.price}',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
                Divider(color: Colors.grey.shade300),
                Expanded(
                    flex: 2,
                    child: LayoutBuilder(builder: (context, constrains) {
                      var height = constrains.maxHeight;
                      var width = constrains.maxWidth;
                      return GridView.count(
                        padding: const EdgeInsets.all(5),
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 5,
                        crossAxisCount: 3,
                        childAspectRatio: (width / height) - .7,
                        children: <Widget>[
                          MyFlatButton(
                            () {},
                          ),
                          MyFlatButton(
                            () {},
                          ),
                          MyFlatButton(
                            () {},
                          ),
                          MyFlatButton(() => Get.back(), text: 'Back'),
                          MyFlatButton(() {}),
                          MyFlatButton(() {}),
                        ],
                      );
                    })),
              ],
            ),
            decoration: BoxDecoration(
                border: Border(left: BorderSide(color: Colors.grey.shade300))),
          ),
        ],
      ),
    );
  }
}
