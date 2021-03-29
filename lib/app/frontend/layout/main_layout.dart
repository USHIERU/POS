import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';

class MainLayout extends StatefulWidget {
  final List<LayoutItemModel> layoutItemModels;

  const MainLayout({Key key, @required this.layoutItemModels})
      : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final double _separation = 30;
  String _currentLocation = '';
  Widget _container = Container();
  int _containerFlex = 15;

  @override
  void initState() {
    if (widget.layoutItemModels.isNotEmpty) {
      _currentLocation = widget.layoutItemModels[0].name;
      _container = widget.layoutItemModels[0].widget;
    }

    super.initState();
  }

  void _changeContainer(LayoutItemModel layoutItemModel) => setState(() {
        _currentLocation = layoutItemModel.name;
        _container = layoutItemModel.widget;
      });

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);

    if (SizeConfig.widthScreen < 1420.0) {
      _containerFlex = 12;
    }

    return Scaffold(
      body: Center(
        child: Container(
          height: SizeConfig.heightScreen,
          width: SizeConfig.widthScreen,
          color: Colors.grey[200],
          padding: EdgeInsets.all(_separation),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: SizeConfig.heightScreen,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: SizeConfig.heightBlock * 20,
                      ),
                      for (LayoutItemModel layoutItemModel
                          in widget.layoutItemModels)
                        TextButton(
                          onPressed: () => _changeContainer(layoutItemModel),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              children: [
                                Icon(layoutItemModel.icon),
                                SizedBox(width: 10),
                                Text(layoutItemModel.name.toUpperCase())
                              ],
                            ),
                          ),
                          style: TextButton.styleFrom(
                            primary: _currentLocation == layoutItemModel.name
                                ? Colors.blue
                                : Colors.black54,
                            backgroundColor: Colors.white,
                            minimumSize: Size(
                                double.maxFinite, SizeConfig.heightBlock * 6),
                          ),
                        )
                    ],
                  ),
                ),
              ),
              SizedBox(width: _separation),
              Expanded(
                flex: _containerFlex,
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          _currentLocation.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: _separation),
                    Expanded(
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: _container,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LayoutItemModel {
  String _name;
  IconData _icon;
  Widget _widget;

  LayoutItemModel(String name, IconData icon, Widget widget) {
    _name = name;
    _icon = icon;
    _widget = widget;
  }

  get name => _name;

  get icon => _icon;

  get widget => _widget;
}
