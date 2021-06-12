import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/home/home_layout.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/app/utils/middlewares/navigator_observers_middlewares.dart';

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
        GetPage(
          name: LoginScreen.routeName,
          page: () => LoginScreen(),
        ),
        GetPage(
          name: HomeLayout.routeName,
          page: () => HomeLayout(),
          middlewares: [AuthMiddleware()],
        ),
      ],
    );
  }
}
