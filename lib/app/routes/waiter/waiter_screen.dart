library waiter_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/waiter/widgets/table_icon.dart';
import 'package:pos/app/configs/size_config.dart';
import 'package:pos/app/routes/cash_register/widgets/draggable_widget.dart';

part 'waiter_screen_controller.dart';
part 'waiter_screen_bindin.dart';

class WaiterScreen extends GetResponsiveView<WaiterScreenController> {
  static final routeName = 'waiter';
  final GlobalKey containerKey = GlobalKey();
  final TransformationController transformController =
      TransformationController();

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return super.build(context);
  }

  @override
  Widget phone() {
    return Scaffold(
      body: SafeArea(child: Container()),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.all(SizeConfig.safeBlockSizeVertical(2)),
        color: Colors.blue,
        height: SizeConfig.safeBlockSizeVertical(100),
        width: SizeConfig.safeBlockSizeHorizontal(100),
        alignment: Alignment.center,
        child: InteractiveViewer(
          maxScale: 2.0,
          transformationController: transformController,
          child: Stack(
            children: [
              Container(
                key: containerKey,
                padding: EdgeInsets.all(SizeConfig.safeBlockSizeVertical(2)),
                height: double.maxFinite,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              DraggableWidget(
                containerKey: containerKey,
                transformController: transformController,
                child: TableIcon(
                  onPressed: controller.onTapTable,
                ),
                x: 10,
                y: 10,
                onDragEnd: (x, y) {
                  // asd = x;
                  // asd = y;
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
