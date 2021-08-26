import 'package:circuit_diagram/render_circuit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Fuse extends LeafRenderObjectWidget {
  @override
  RenderFuse createRenderObject(BuildContext context) => RenderFuse();
}

class RenderFuse extends RenderCircuit {
  final double height = 30;
  final double sideWidth = 10;
  final double boxWidth = 50;

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.constrain(Size(boxWidth + 2 * sideWidth, height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    canvas.drawRect(
        Rect.fromLTWH(offset.dx, offset.dy + (height / 2) - thickness / 2,
            size.width, thickness),
        fillPaint);

    canvas.drawRect(
        Rect.fromLTWH(offset.dx + sideWidth + thickness / 2,
            offset.dy + thickness / 2, boxWidth, height - thickness),
        strokePaint);
  }
}
