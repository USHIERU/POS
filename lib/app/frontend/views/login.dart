import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';
import 'package:pos/app/frontend/views/home.dart';

class Login extends StatefulWidget {
  static const routeName = 'Login';

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.widthBlock * 5,
                  vertical: SizeConfig.heightBlock * 5),
              width: SizeConfig.widthBlock * 40,
              height: SizeConfig.heightBlock * 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(fontSize: SizeConfig.widthBlock * 3),
                  ),
                  TextField(),
                  TextField(),
                  TextButton(
                    onPressed: () => Navigator.pushNamedAndRemoveUntil(
                        context, Home.routeName, (route) => false),
                    child: Text('Submit'),
                    style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue[800],
                        minimumSize: Size(SizeConfig.widthBlock * 10,
                            SizeConfig.heightBlock * 6)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
