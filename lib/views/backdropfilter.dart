import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterPage extends StatefulWidget {
  const BackdropFilterPage({Key? key}) : super(key: key);

  @override
  State<BackdropFilterPage> createState() => _BackdropFilterPageState();
}

class _BackdropFilterPageState extends State<BackdropFilterPage> {
  double _myBlur = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('BackdropFilter')),
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.asset('assets/images/logoElite37.png'),
              ClipRect(
                // <-- clips to the 200x200 [Container] below
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
