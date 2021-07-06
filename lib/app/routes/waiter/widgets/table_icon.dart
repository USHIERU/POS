import 'package:flutter/material.dart';

class TableIcon extends StatelessWidget {
  final void Function() onPressed;

  const TableIcon({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Container(),
      style: ElevatedButton.styleFrom(
        shape: CircleBorder(),
        primary: Colors.blue,
        onPrimary: Colors.blue.shade300,
        minimumSize: Size(80, 80),
      ),
    );
  }
}
