import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/context/session/application/get_session.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (GetSession(POSConfig().factory.getSessionRepository).run() == null) {
      return RouteSettings(name: LoginScreen.routeName);
    }
    return null;
  }
}
