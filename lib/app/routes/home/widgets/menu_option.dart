import 'package:flutter/material.dart';

class MenuParams {
  final String name;
  final Icon icon;
  final Widget widget;

  MenuParams(this.name, this.icon, this.widget);
}

class MenuOption extends StatelessWidget {
  final MenuParams menuParams;
  final void Function(Widget widget) callback;

  const MenuOption({
    Key key,
    @required this.menuParams,
    @required this.callback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton.icon(
          icon: menuParams.icon,
          label: Text(menuParams.name),
          onPressed: () => callback(menuParams.widget),
          style: TextButton.styleFrom(
            primary: Colors.white,
            minimumSize: Size(double.maxFinite, 60),
          ),
        ),
        SizedBox(height: 1),
      ],
    );
  }
}
