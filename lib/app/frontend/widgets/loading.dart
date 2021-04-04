import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  final double width;
  final double height;

  const Loading({Key key, @required this.width, @required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: Colors.black.withAlpha(50),
      child: Center(
        child: Card(
          child: Container(
            width: height * .08,
            height: height * .08,
            margin: EdgeInsets.all(height * .02),
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
