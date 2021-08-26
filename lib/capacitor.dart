import 'package:circuit_diagram/render_circuit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Capacitor extends LeafRenderObjectWidget {
  @override
  RenderCapacitor createRenderObject(BuildContext context) => RenderCapacitor();
}

class RenderCapacitor extends RenderCircuit {
  final double height = 30;
  final double sideWidth = 20;
  final double gap = 10;

  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.constrain(Size(gap + 2 * sideWidth, height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;

    canvas.drawRect(
        Rect.fromLTWH(offset.dx, offset.dy + (height - thickness) / 2,
            sideWidth, thickness),
        fillPaint);
    canvas.drawRect(
        Rect.fromLTWH(
            offset.dx + sideWidth - thickness, offset.dy, thickness, height),
        fillPaint);
    canvas.drawRect(
        Rect.fromLTWH(
            offset.dx + sideWidth + gap, offset.dy, thickness, height),
        fillPaint);
    canvas.drawRect(
        Rect.fromLTWH(offset.dx + sideWidth + gap,
            offset.dy + (height - thickness) / 2, sideWidth, thickness),
        fillPaint);
  }
}
