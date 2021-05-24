import 'package:flutter/material.dart';
import 'package:pos/app/routes/login/view_login.dart';

class ViewSplash extends StatefulWidget {
  static String rounteName = 'ViewSplash';

  @override
  _ViewSplashState createState() => _ViewSplashState();
}

class _ViewSplashState extends State<ViewSplash> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    Future.delayed(
        Duration(seconds: 2),
        () => Navigator.pushNamedAndRemoveUntil(
            context, ViewLogin.routeName, (route) => false));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: double.maxFinite,
          width: double.maxFinite,
          child: Container(
            height: 50,
            width: 50,
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
