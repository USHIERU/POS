import 'dart:html';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/context/session/domain/session.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings? redirect(String? route) {
    if (!Session.isLogged) {
      return RouteSettings(name: LoginScreen.routeName);
    }
    return null;
  }
}
