import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pos/app/frontend/views/home.dart';
import 'package:pos/app/frontend/views/login.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Point Of Sale');
    setWindowMinSize(const Size(1024, 768));
    setWindowMaxSize(Size.infinite);
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Point Of Sale',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        Login.routeName: (contest) => Login(),
        Home.routeName: (contest) => Home(),
      },
      home: Login(),
    );
  }
}
