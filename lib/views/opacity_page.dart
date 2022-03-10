import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  State<OpacityPage> createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  double _visible = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(width: 100, height: 100, color: Colors.blue),
          Opacity(
              opacity: _visible,
              child: Container(width: 100, height: 100, color: Colors.green)),
          Container(width: 100, height: 100, color: Colors.yellow),
          Slider(
              value: _visible,
              min: 0,
              max: 1,
              onChanged: (double newValue) {
                setState(() {
                  _visible = newValue;
                });
              }),
        ]),
      ),
    );
  }
}
