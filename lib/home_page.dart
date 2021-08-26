import 'package:circuit_diagram/capacitor.dart';
import 'package:circuit_diagram/fuse.dart';
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
        body: Container(child: Center(child: _diagram()), color: Colors.black));
  }

  Widget _diagram() {
    if (false) {
      return Column(children: [
        Container(height: 100.1, color: Colors.yellow),
        Container(height: 100.2, color: Colors.yellow),
        Container(height: 100.4, color: Colors.yellow)
      ]);
    }
    return Row(children: [
      Expanded(child: Container(child: Wire())),
      Container(child: Capacitor()),
      Fuse(),
      Expanded(child: Container(child: Wire()))
    ]);
  }
}
