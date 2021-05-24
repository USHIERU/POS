import 'package:flutter/material.dart';
import 'package:pos/app/utils/break_points.dart';
import 'package:pos/app/routes/home/layouts/home_computer.dart';
import 'package:pos/app/routes/home/layouts/home_mobile.dart';
import 'package:pos/app/routes/home/widgets/menu_option.dart';
import 'package:pos/app/views/products/view_products.dart';

class ViewHome extends StatelessWidget {
  static final String routeName = 'ViewHome';

  final List<MenuParams> menuParams = [
    MenuParams(
      'Products',
      Icon(Icons.ac_unit),
      ViewProducts(),
    ),
    MenuParams(
      'Button',
      Icon(Icons.ac_unit),
      Container(),
    ),
    MenuParams(
      'Button',
      Icon(Icons.ac_unit),
      Container(),
    ),
    MenuParams(
      'Button',
      Icon(Icons.ac_unit),
      Container(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < BreakPoints.xsmall) {
        return HomeMobile(menuParams: menuParams);
      }

      return HomeComputer(menuParams: menuParams);
    });
  }
}
