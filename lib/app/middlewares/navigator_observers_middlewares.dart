import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:context/context.dart' as Context;

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (Context.GetSession(POSConfig().factory.getSessionRepository).run() == null) {
      return RouteSettings(name: LoginScreen.routeName);
    }
    return null;
  }
}
