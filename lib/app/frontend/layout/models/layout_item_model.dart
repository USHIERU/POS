import 'package:flutter/widgets.dart';

class LayoutItemModel {
  String _name;
  IconData  _icon;
  Widget _widget;

  LayoutItemModel(String name, IconData  icon, Widget widget) {
    _name = name;
    _icon = icon;
    _widget = widget;
  }

  get name => _name;

  get icon => _icon;

  get widget => _widget;
}
