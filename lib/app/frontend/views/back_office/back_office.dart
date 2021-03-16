import 'package:flutter/material.dart';
import 'package:pos/app/frontend/views/back_office/views/users/users.dart';

class BackOffice extends StatefulWidget {
  @override
  _BackOfficeState createState() => _BackOfficeState();
}

class _BackOfficeState extends State<BackOffice> {
  Widget _container;

  List<BackOfficeItemModel> _backOfficeItemModel = [
    BackOfficeItemModel('Users', Icons.account_circle, UsersBackOffice()),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: GridView.count(
        crossAxisCount: 10,
        children: _container != null
            ? [_container]
            : _backOfficeItemModel.map(
                (itemModel) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextButton(
                      onPressed: () =>
                          setState(() => _container = itemModel.widget),
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
      ),
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
