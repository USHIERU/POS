import 'package:flutter/material.dart';
import 'package:pos/app/frontend/layout/main_layout.dart';
import 'package:pos/app/frontend/views/back_office/back_office.dart';

class Home extends StatefulWidget {
  static const routeName = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<LayoutItemModel> layoutItemModels = [
    LayoutItemModel('Quick sale', Icons.monetization_on, Container()),
    LayoutItemModel('Tables', Icons.apps, Container()),
    LayoutItemModel('Back office', Icons.settings, BackOffice()),
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(layoutItemModels: layoutItemModels);
  }
}
