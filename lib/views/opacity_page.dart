import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  State<OpacityPage> createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  double _visible = 1;

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
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
