import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DraggableWidget extends StatefulWidget {
  final Widget child;
  final double x;
  final double y;
  final void Function(double x, double y)? onDragEnd;
  final GlobalKey containerKey;
  final TransformationController? transformController;

  DraggableWidget({
    required this.child,
    this.x = 0,
    this.y = 0,
    required this.containerKey,
    this.onDragEnd,
    this.transformController,
    Key? key,
  }) : super(key: key);

  @override
  DraggableWidgetState createState() => DraggableWidgetState();
}

class DraggableWidgetState extends State<DraggableWidget> {
  late double top, left;
  late Size normalSize;
  final key = GlobalKey<DraggableWidgetState>();

  @override
  void initState() {
    top = widget.x;
    left = widget.y;
    WidgetsBinding.instance!.addPostFrameCallback((_) => getSize());
    super.initState();
  }

  void getSize() {
    final box = key.currentContext!.findRenderObject() as RenderBox;
    normalSize = box.size;
  }

  @override
  Widget build(BuildContext context) {
    final backgroundRenderBox =
        widget.containerKey.currentContext!.findRenderObject()! as RenderBox;
    return Positioned(
      top: top,
      left: left,
      key: key,
      child: Draggable(
        dragAnchorStrategy: childDragAnchorStrategy,
        feedback: _ScalableFeedbackWidget(
          transformController: widget.transformController,
          child: widget.child,
        ),
        childWhenDragging: const SizedBox(),
        onDragEnd: (drag) {
          var scale = widget.transformController?.value.getMaxScaleOnAxis() ?? 1.0;
          final localOffset = backgroundRenderBox.globalToLocal(drag.offset.translate(
            -(normalSize.width / 2) * (scale - 1.0),
            -(normalSize.height / 2) * (scale - 1.0),
          ));
          setState(() {
            top = localOffset.dy;
            left = localOffset.dx;
          });
          widget.onDragEnd?.call(top, left);
        },
        child: widget.child,
      ),
    );
  }
}

class _ScalableFeedbackWidget extends StatelessWidget {
  final TransformationController? transformController;
  final Widget child;

  const _ScalableFeedbackWidget({
    Key? key,
    required this.child,
    this.transformController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var scale = transformController?.value.getMaxScaleOnAxis() ?? 1.0;
    return Transform.scale(
      scale: scale,
      child: child,
    );
  }
}