import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class RenderCircuit extends RenderBox {
  double get thickness => 6;

  bool get antiAlias => true;

  Paint get fillPaint => Paint()
    ..style = PaintingStyle.fill
    ..isAntiAlias = antiAlias
    ..color = Colors.white;

  Paint get strokePaint => Paint()
    ..style = PaintingStyle.stroke
    ..isAntiAlias = antiAlias
    ..strokeWidth = thickness
    ..color = Colors.white;

  @override
  void performLayout() {
    size = computeDryLayout(constraints);
  }
}
