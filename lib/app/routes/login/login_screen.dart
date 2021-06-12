import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/home/home_layout.dart';
import 'package:pos/app/widgets/my_buttons.dart';
import 'package:pos/app/utils/styles/text_form_field_styles.dart';
import 'package:pos/context/session/application/set_session.dart';
import 'package:pos/context/session/domain/session.dart';
import 'package:pos/context/session/infrastructure/persistence/session_in_memory.dart';

part 'controllers/login_screen_controller.dart';

class LoginScreen extends GetResponsiveView<LoginScreenController> {
  static final routeName = 'Login';
  final LoginScreenController _controller = Get.put(LoginScreenController());

  String? user;
  String? password;

  Widget loginFrom() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'POS',
            style: TextStyle(
              fontSize: 60,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 50),
          TextFormField(
            onChanged: (user) => this.user = user,
            decoration: InputDecorationStyle.copyWith(
              labelText: 'User',
            ),
          ),
          SizedBox(height: 15),
          TextFormField(
            onChanged: (password) => this.password = password,
            obscureText: true,
            decoration: InputDecorationStyle.copyWith(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 15),
          MyElevatedButton(
            'Entrar',
            () => _controller.login(user ?? '', password ?? ''),
          )
        ],
      );

  @override
  Widget phone() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: loginFrom(),
      ),
    );
  }

  @override
  Widget tablet() {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(color: Colors.blue),
          ),
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.center,
              child: ConstrainedBox(
                constraints: BoxConstraints(maxWidth: 500),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: loginFrom(),
                ),
              ),
            ),
          ),
        ],
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
                  child: loginFrom(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
