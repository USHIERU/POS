import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/shared/routes/cash_register/cash_register_screen.dart';

class MTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.toNamed(CashRegisterScreen.routeName),
      child: Container(),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.blue,
        onPrimary: Colors.blue.shade300
      ),
    );
  }
}
