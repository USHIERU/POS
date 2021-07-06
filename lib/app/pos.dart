import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/admin/admin_screen.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/app/routes/waiter/waiter_screen.dart';
import 'package:pos/app/routes/cash_register/cash_register_screen.dart';
import 'package:pos/app/middlewares/navigator_observers_middlewares.dart';

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
          binding: LoginScreenBinding(),
        ),
        GetPage(
          name: AdminScreen.routeName,
          page: () => AdminScreen(),
          binding: AdminScreenBinding(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: WaiterScreen.routeName,
          page: () => WaiterScreen(),
          binding: WaiterScreenBinding(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: CashRegisterScreen.routeName,
          page: () => CashRegisterScreen(
            isRoute: true,
          ),
          middlewares: [AuthMiddleware()],
        ),
      ],
    );
  }
}
