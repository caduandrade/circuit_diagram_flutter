import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wire extends LeafRenderObjectWidget {
  Wire(this.width);

  final double width;

  @override
  RenderWire createRenderObject(BuildContext context) => RenderWire(width);

  @override
  void updateRenderObject(
      BuildContext context, covariant RenderWire renderObject) {
    if (width != renderObject.width) {
      renderObject.width = width;
      renderObject.markNeedsLayout();
    }
  }
}

class RenderWire extends RenderBox {
  RenderWire(this.width);

  double width;
  final double height = 2;

  @override
  void performLayout() {
    size = computeDryLayout(constraints);
  }

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.constrain(Size(width, height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black;
    canvas.drawRect(Rect.fromLTWH(offset.dx, offset.dy, width, height), paint);
  }
}
