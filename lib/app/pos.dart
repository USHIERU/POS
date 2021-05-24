import 'package:flutter/material.dart';
import 'package:pos/app/routes/home/view_home.dart';
import 'package:pos/app/routes/login/view_login.dart';
import 'package:pos/app/routes/splash/view_splash.dart';

class POS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'POS',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: ViewSplash.rounteName,
      routes: {
        ViewSplash.rounteName: (context) => ViewSplash(),
        ViewLogin.routeName: (context) => ViewLogin(),
        ViewHome.routeName: (context) => ViewHome(),
      },
    );
  }
}
