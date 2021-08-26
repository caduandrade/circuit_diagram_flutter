import 'package:circuit_diagram/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CircuitDiagramApp());
}

class CircuitDiagramApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CircuitDiagram',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
