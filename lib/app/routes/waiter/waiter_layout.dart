import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/waiter/widgets/table_icon.dart';
import 'package:pos/app/configs/size_config.dart';
import 'package:pos/app/shared/widgets/draggable_widget.dart';

part 'controllers/waiter_layout_controller.dart';

class WaiterLayout extends GetResponsiveView<WaiterLayoutController> {
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

  var draggableWidgetPosX = 10.0;
  var draggableWidgetPosY = 10.0;

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
                child: TableIcon(),
                x: draggableWidgetPosX,
                y: draggableWidgetPosY,
                onDragEnd: (x, y) {
                  draggableWidgetPosX = x;
                  draggableWidgetPosY = y;
                },
              )
            ],
          ),
        ),
      )),
    );
  }
}
