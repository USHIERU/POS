library login_screen;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/configs/pos_config.dart';
import 'package:pos/app/routes/admin/admin_screen.dart';
import 'package:pos/app/routes/login/widgets/login_form.dart';
import 'package:pos/app/routes/waiter/waiter_screen.dart';
import 'package:pos/app/configs/size_config.dart';
import 'package:pos/context/session/application/set_session.dart';
import 'package:pos/context/session/domain/session.dart';

part './login_screen_controller.dart';
part './login_screen_binding.dart';

class LoginScreen extends GetResponsiveView<LoginScreenController> {
  static final routeName = 'Login';

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return super.build(context);
  }

  @override
  Widget phone() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: LoginForm(
          userController: controller.user,
          passwordController: controller.password,
          loginFuction: controller.login,
        ),
      ),
    );
  }

  @override
  Widget desktop() {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(color: Colors.blue),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: LoginForm(
                    userController: controller.user,
                    passwordController: controller.password,
                    loginFuction: controller.login,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
