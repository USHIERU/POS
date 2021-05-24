import 'package:flutter/material.dart';
import 'package:pos/app/utils/break_points.dart';
import 'package:pos/app/routes/login/layouts/login_computer.dart';
import 'package:pos/app/routes/login/layouts/login_mobile.dart';

class ViewLogin extends StatelessWidget {
  static final String routeName = 'ViewLogin';
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < BreakPoints.xsmall) {
        return LoginMobile();
      }

      return LoginComputer();
    });
  }
}
