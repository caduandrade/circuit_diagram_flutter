import 'package:circuit_diagram/wire.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('CircuitDiagram'),
        ),
        body: Center(child: _diagram()));
  }

  Widget _diagram() {
    return Row(children: [Wire(20)]);
  }
}
