import 'package:flutter/material.dart';
import 'package:get/get.dart';

part 'controllers/tables_screen_controller.dart';

class TablesScreen extends GetResponsiveView<TablesScreenController> {
  final TablesScreenController controller = Get.put(TablesScreenController());
  final GlobalKey bgKey = GlobalKey();

  @override
  Widget phone() {
    return Container(
      child: Column(
        children: [],
      ),
    );
  }

  @override
  Widget tablet() {
    return Container();
  }

  @override
  Widget desktop() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Text('A1'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
