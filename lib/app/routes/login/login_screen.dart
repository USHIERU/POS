import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/home/home_screen.dart';

part 'controllers/login_screen_controller.dart';

class LoginScreen extends GetResponsiveView<LoginScreenController> {
  static final routeName = 'Login';

  @override
  Widget phone() {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(),
          TextFormField(),
          ElevatedButton(
            onPressed: () => Get.offAndToNamed(HomeScreen.routeName),
            child: Text('Entrar'),
          )
        ],
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(),
                TextFormField(),
                ElevatedButton(
                  onPressed: () => Get.offAndToNamed(HomeScreen.routeName),
                  child: Text('Entrar'),
                )
              ],
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(),
                TextFormField(),
                ElevatedButton(
                  onPressed: () => Get.offAndToNamed(HomeScreen.routeName),
                  child: Text('Entrar'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
