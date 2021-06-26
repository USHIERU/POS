import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pos/app/routes/admin/admin_layout.dart';
import 'package:pos/app/routes/login/login_screen.dart';
import 'package:pos/app/routes/waiter/waiter_layout.dart';
import 'package:pos/app/shared/routes/cash_register/cash_register_screen.dart';
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
          name: AdminLayout.routeName,
          page: () => AdminLayout(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: WaiterLayout.routeName,
          page: () => WaiterLayout(),
          middlewares: [AuthMiddleware()],
        ),
        GetPage(
          name: CashRegisterScreen.routeName,
          page: () => CashRegisterScreen(isRoute: true,),
          middlewares: [AuthMiddleware()],
        ),
      ],
    );
  }
}
