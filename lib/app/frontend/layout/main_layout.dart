import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';
import 'package:pos/app/frontend/layout/models/layout_item_model.dart';

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

  @override
  void initState() {
    if (widget.layoutItemModels.isNotEmpty) {
      _currentLocation = widget.layoutItemModels[0].name;
      _container = widget.layoutItemModels[0].widget;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
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
                          onPressed: () => setState(
                              () => _currentLocation = layoutItemModel.name),
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
                                double.maxFinite, SizeConfig.heightBlock * 8),
                          ),
                        )
                    ],
                  ),
                ),
              ),
              SizedBox(width: _separation),
              Expanded(
                flex: 10,
                child: Column(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:
                          Center(child: Text(_currentLocation.toUpperCase())),
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
