library waiter_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/routes/waiter/widgets/waiter_sign_in/waiter_sign_in.dart';
import 'package:pos/app/routes/waiter/widgets/table_icon.dart';
import 'package:pos/app/configs/size_config.dart';
import 'package:pos/app/routes/cash_register/widgets/draggable_widget.dart';
import 'package:pos/context/table/application/get_tables.dart';
import 'package:pos/context/table/domain/table.dart' as Domain;

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
          child: Obx(
            () => Stack(
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
                ...List.generate(
                  controller.tables.length,
                  (index) => DraggableWidget(
                    containerKey: containerKey,
                    transformController: transformController,
                    child: TableIcon(
                      onPressed: controller.onTapTable,
                    ),
                    x: controller.tables[index].posX,
                    y: controller.tables[index].posY,
                    onDragEnd: (x, y) {
                      // controller.tables[index].posX += x;
                      // controller.tables[index].posY += y;
                    },
                  ),
                ),
                Obx(
                  () => controller.isNumberPadVisible.value
                      ? WaiterSignIn(
                        onCloseWaiterSignIn: controller.onCloseNumberPad,
                      )
                      : Container(),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
