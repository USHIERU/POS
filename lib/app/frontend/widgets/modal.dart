import 'package:flutter/material.dart';
import 'package:pos/app/frontend/config/size_config.dart';

class Modal extends StatefulWidget {
  final Widget child;

  const Modal({Key key, @required this.child}) : super(key: key);

  @override
  _ModalState createState() => _ModalState();
}

class _ModalState extends State<Modal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      color: Colors.black.withAlpha(50),
      child: Center(
        child: Card(
          child: Container(
            margin: EdgeInsets.all(SizeConfig.heightBlock * 3),
            child: widget.child,
          ),
        ),
      ),
    );
  }
}
