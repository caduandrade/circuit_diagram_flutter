import 'package:circuit_diagram/render_circuit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Wire extends LeafRenderObjectWidget {
  @override
  RenderWire createRenderObject(BuildContext context) => RenderWire();
}

class RenderWire extends RenderCircuit {
  @override
  Size computeDryLayout(BoxConstraints constraints) {
    return constraints.constrain(Size(0, thickness));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final canvas = context.canvas;
    canvas.drawRect(
        Rect.fromLTWH(offset.dx, offset.dy, size.width, thickness), fillPaint);
  }
}
