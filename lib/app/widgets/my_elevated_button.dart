import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ElevatedButton MyElevatedButton(String text, void Function() onPressed,
    {double width = double.maxFinite, double height = 55}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(fontSize: (height / 2) - 5),
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(width, height),
    ),
  );
}
