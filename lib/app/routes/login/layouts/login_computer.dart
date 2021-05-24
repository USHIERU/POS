import 'package:flutter/material.dart';
import 'package:pos/app/routes/home/view_home.dart';

class LoginComputer extends StatefulWidget {
  @override
  _LoginComputerState createState() => _LoginComputerState();
}

class _LoginComputerState extends State<LoginComputer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(color: Colors.blue),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70),
                child: Container(
                  width: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Login',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      SizedBox(height: 30),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email'),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, ViewHome.routeName, (route) => false),
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(double.maxFinite, 40),
                        ),
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
