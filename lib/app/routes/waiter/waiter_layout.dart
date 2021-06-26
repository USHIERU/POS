import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/waiter/widgets/table.dart';
import 'package:pos/app/configs/size_config.dart';

part 'controllers/waiter_layout_controller.dart';

class WaiterLayout extends GetResponsiveView<WaiterLayoutController> {
  static final routeName = 'waiter';

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
        child: Container(
          padding: EdgeInsets.all(SizeConfig.safeBlockSizeVertical(2)),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              MTable(),
            ],
          ),
        ),
      )),
    );
  }
}
