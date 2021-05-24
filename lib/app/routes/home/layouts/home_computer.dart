import 'package:flutter/material.dart';
import 'package:pos/app/routes/home/widgets/m_app_bar.dart';
import 'package:pos/app/routes/home/widgets/menu_option.dart';

class HomeComputer extends StatefulWidget {
  final List<MenuParams> menuParams;

  const HomeComputer({Key key, this.menuParams}) : super(key: key);

  @override
  _HomeComputerState createState() => _HomeComputerState();
}

class _HomeComputerState extends State<HomeComputer> {
  Widget _container = Center(child: CircularProgressIndicator());

  @override
  void initState() {
    super.initState();
    setState(() {
      _container = widget.menuParams.first.widget;
    });
  }

  void _callback(Widget widget) {
    setState(() => _container = widget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 200,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (MenuParams menuParams in widget.menuParams)
                  MenuOption(
                    menuParams: menuParams,
                    callback: _callback,
                  )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                MAppBar(),
                Expanded(child: _container),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
