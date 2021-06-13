import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/context/session/application/get_session.dart';
import 'package:pos/context/session/infrastructure/persistence/session_in_memory.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (GetSession(SessionInMemory()).run() == null) {
      return RouteSettings(name: LoginScreen.routeName);
    }
    return null;
  }
}
