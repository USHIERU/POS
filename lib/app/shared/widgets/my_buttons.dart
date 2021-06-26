import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
ElevatedButton MyElevatedButton(
  String text,
  void Function() onPressed, {
  double width = double.maxFinite,
  double height = 55,
  ButtonStyle? style,
  TextStyle textStyle = const TextStyle(),
}) {
  return ElevatedButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: TextStyle(fontSize: (height / 2) - 5).merge(textStyle),
    ),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(width, height),
    ).merge(style),
  );
}

// ignore: non_constant_identifier_names
ElevatedButton MyFlatButton(
  void Function() onPressed, {
  Widget? child,
  String? text,
  double width = double.maxFinite,
  double height = 55,
  ButtonStyle? style,
  TextStyle textStyle = const TextStyle(),
}) {
  if (text != null && child == null)
    child = Text(
      text,
      style: TextStyle(fontSize: (height / 2) - 5).merge(textStyle),
    );

  return ElevatedButton(
    onPressed: onPressed,
    child: child ?? Container(),
    style: ElevatedButton.styleFrom(
      minimumSize: Size(width, height),
      elevation: 0,
    ).merge(style),
  );
}
