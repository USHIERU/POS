import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/layouts/home/home_screen.dart';
import 'package:pos/app/screens/login/login_screen.dart';

class POS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'POS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.routeName,
      getPages: [
        GetPage(name: LoginScreen.routeName, page: () => LoginScreen()),
        GetPage(name: HomeScreen.routeName, page: () => HomeScreen()),
      ],
    );
  }
}
