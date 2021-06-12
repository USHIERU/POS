import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/layouts/home/home_layout.dart';
import 'package:pos/app/widgets/my_buttons.dart';
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
              () => Get.offAndToNamed(HomeLayout.routeName),
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
                        () => Get.offAndToNamed(HomeLayout.routeName),
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
                        () => Get.offAndToNamed(HomeLayout.routeName),
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
