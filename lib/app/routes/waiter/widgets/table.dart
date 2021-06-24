import 'package:flutter/material.dart';

class MTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Container(),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.blue,
        onPrimary: Colors.blue.shade300
      ),
    );
  }
}
