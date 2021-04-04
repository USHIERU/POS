import 'package:flutter/material.dart';
import 'package:pos/app/frontend/views/back_office/views/products/products.dart';
import 'package:pos/app/frontend/views/back_office/views/users/users.dart';

// CONTAINER SIZE
// Heigh: SizeConfig.heightBlock * 90,
// Width: SizeConfig.widthBlock * 78.5,

class BackOffice extends StatefulWidget {
  @override
  _BackOfficeState createState() => _BackOfficeState();
}

class _BackOfficeState extends State<BackOffice> {
  Widget _container;

  List<BackOfficeItemModel> _backOfficeItemModel = [
    BackOfficeItemModel('Users', Icons.account_circle, UsersBackOffice()),
    BackOfficeItemModel('Products', Icons.assignment, Products()),
    BackOfficeItemModel('Ingredients', Icons.assignment, Container()),
    BackOfficeItemModel('Tickets', Icons.assignment, Container()),
  ];

  void _changeContainer(BackOfficeItemModel backOfficeItemModel) =>
      setState(() {
        _container = backOfficeItemModel.widget;
      });

  void nullContainer() => setState(() => _container = null);

  @override
  Widget build(BuildContext context) {
    return _container ??
        GridView.count(
          crossAxisCount: 8,
          children: _backOfficeItemModel.map(
            (itemModel) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextButton(
                  onPressed: () => _changeContainer(itemModel),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          itemModel.icon,
                          size: 50,
                        ),
                        Text(itemModel.name),
                      ],
                    ),
                  ),
                ),
              );
            },
          ).toList(),
        );
  }
}

class BackOfficeItemModel {
  String _name;
  IconData _icon;
  Widget _widget;

  BackOfficeItemModel(String name, IconData icon, Widget widget) {
    _name = name;
    _icon = icon;
    _widget = widget;
  }

  get name => _name;

  get icon => _icon;

  get widget => _widget;
}
