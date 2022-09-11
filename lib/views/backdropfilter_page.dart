import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class BackdropFilterPage extends StatefulWidget {
  const BackdropFilterPage({Key? key}) : super(key: key);

  @override
  State<BackdropFilterPage> createState() => _BackdropFilterPageState();
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
  double _myBlur = 5;
  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset('assets/images/logoElite37.png'),
              ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: _myBlur,
                    sigmaY: _myBlur,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 250.0,
                    height: 250.0,
                    child: const Text(
                      'Meu Texto',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Slider(
              value: _myBlur,
              min: 0.1,
              max: 25,
              divisions: 10,
              label: _myBlur.toString(),
              onChanged: (double value) {
                setState(() {
                  _myBlur = value;
                });
              }),
        ],
      ),
    );
  }
}
