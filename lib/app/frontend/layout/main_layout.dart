import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';

// CONTAINER SIZE
// Width: SizeConfig.widthBlock * 78.5
// Height: SizeConfig.heightBlock * 90

class MainLayout extends StatefulWidget {
  final List<LayoutItemModel> layoutItemModels;

  const MainLayout({Key key, @required this.layoutItemModels})
      : super(key: key);

  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  String _currentLocation = '';
  Widget _container = Container();

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
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Container(
          height: SizeConfig.heightScreen - (SizeConfig.heightBlock * 2),
          width: SizeConfig.widthScreen - (SizeConfig.widthBlock * 2),
          margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.widthBlock,
              vertical: SizeConfig.heightBlock),
          color: Colors.grey[200],
          child: Row(
            children: [
              Container(
                width: SizeConfig.widthBlock * 18.5,
                height: SizeConfig.heightBlock * 98,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(height: SizeConfig.heightBlock * 20),
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
              SizedBox(width: SizeConfig.widthBlock),
              Container(
                width: SizeConfig.widthBlock * 78.5,
                height: SizeConfig.heightBlock * 98,
                child: Column(
                  children: [
                    Container(
                      width: SizeConfig.widthBlock * 78.5,
                      height: SizeConfig.heightBlock * 7,
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
                    SizedBox(height: SizeConfig.heightBlock),
                    Container(
                      width: SizeConfig.widthBlock * 78.5,
                      height: SizeConfig.heightBlock * 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: _container,
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
