import 'package:flutter/material.dart';
import 'package:pos/app/utils/break_points.dart';
import 'package:pos/app/views/products/layouts/products_computer.dart';
import 'package:pos/app/views/products/layouts/products_mobile.dart';
import 'package:pos/context/product/domain/product.dart';

class ViewProducts extends StatefulWidget {
  static final String routeName = 'ViewProducts';
  @override
  _ViewProductsState createState() => _ViewProductsState();
}

class _ViewProductsState extends State<ViewProducts> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < BreakPoints.xsmall) {
          return ProductsMobile(products: products);
        }
        return ProductsComputer(products: products);
      },
    );
  }
}

List<Product> products = [
  Product('Jitomate', 12),
  Product('Pepino', 12),
  Product('Aguacate', 12),
];
