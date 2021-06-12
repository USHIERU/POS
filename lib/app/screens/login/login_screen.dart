import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/screens/home/home_screen.dart';
import 'package:pos/app/widgets/my_elevated_button.dart';
import 'package:pos/app/widgets/my_text_form_field.dart';

part 'controllers/login_screen_controller.dart';

class LoginScreen extends GetResponsiveView<LoginScreenController> {
  static final routeName = 'Login';

  @override
  Widget phone() {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
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
            MyTextFormField(),
            SizedBox(height: 15),
            MyTextFormField(),
            SizedBox(height: 15),
            MyElevatedButton(
              'Entrar',
              () => Get.offAndToNamed(HomeScreen.routeName),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget tablet() {
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
                  child: Column(
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
                      MyTextFormField(),
                      SizedBox(height: 15),
                      MyTextFormField(),
                      SizedBox(height: 15),
                      MyElevatedButton(
                        'Entrar',
                        () => Get.offAndToNamed(HomeScreen.routeName),
                      )
                    ],
                  ),
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
                  child: Column(
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
                      MyTextFormField(),
                      SizedBox(height: 15),
                      MyTextFormField(),
                      SizedBox(height: 15),
                      MyElevatedButton(
                        'Entrar',
                        () => Get.offAndToNamed(HomeScreen.routeName),
                      )
                    ],
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
