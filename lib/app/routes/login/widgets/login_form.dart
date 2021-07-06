import 'package:flutter/material.dart';
import 'package:pos/app/widgets/my_buttons.dart';
import 'package:pos/app/utils/styles/text_form_field_styles.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController userController;
  final TextEditingController passwordController;
  final void Function() loginFuction;

  const LoginForm({
    Key? key,
    required this.userController,
    required this.passwordController,
    required this.loginFuction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          controller: userController,
          decoration: InputDecorationStyle.copyWith(
            labelText: 'User',
          ),
        ),
        SizedBox(height: 15),
        TextFormField(
          controller: passwordController,
          obscureText: true,
          decoration: InputDecorationStyle.copyWith(
            labelText: 'Password',
          ),
        ),
        SizedBox(height: 15),
        MyElevatedButton(
          loginFuction,
          text: 'Entrar',
        )
      ],
    );
  }
}
