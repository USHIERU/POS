import 'package:flutter/material.dart';
import 'package:pos/app/routes/home/widgets/menu_option.dart';

class HomeMobile extends StatefulWidget {
  final List<MenuParams> menuParams;

  const HomeMobile({Key key, this.menuParams}) : super(key: key);

  @override
  _HomeMobileState createState() => _HomeMobileState();
}

class _HomeMobileState extends State<HomeMobile> {
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
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pos'),
        actions: [
          TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
            label: Text('Uziel C.'),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
          SizedBox(width: 10),
        ],
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.blue,
          child: Column(
            children: [
              SizedBox(height: 200),
              ...widget.menuParams
                  .map((e) => MenuOption(
                        menuParams: e,
                        callback: _callback,
                      ))
                  .toList()
            ],
          ),
        ),
      ),
      body: _container,
    );
  }
}
