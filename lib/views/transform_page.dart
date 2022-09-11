import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class TransformPage extends StatefulWidget {
  const TransformPage({Key? key}) : super(key: key);

  @override
  State<TransformPage> createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double _myScale = 0.5;
  double _mySkewX = 0;
  double _myRotate = 0.5;
  double _myPositionX = 0;

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.all(15.0),
              children: [
                Transform.scale(
                  alignment: Alignment.bottomCenter,
                  scale: _myScale,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/dash_v2.png'),
                  ),
                ),
                Slider(
                    value: _myScale,
                    min: 0.5,
                    max: 2.0,
                    divisions: 100,
                    label: _myScale.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _myScale = value;
                      });
                    }),
                Transform(
                  transform: Matrix4.skewX(_mySkewX),
                  // transform: Matrix4.skewY(0.4),
                  child: const SizedBox(
                    width: 150,
                    height: 150,
                    child: Center(
                        child: Text(
                      'Elite37',
                      textScaleFactor: 4,
                    )),
                  ),
                ),
                Slider(
                    value: _mySkewX,
                    min: -1.0,
                    max: 1.0,
                    divisions: 100,
                    label: _mySkewX.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _mySkewX = value;
                      });
                    }),
                Transform.rotate(
                  angle: pi / _myRotate,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/dash_v2.png'),
                  ),
                ),
                Slider(
                    value: _myRotate,
                    min: 0.5,
                    max: 2.0,
                    divisions: 100,
                    label: _myRotate.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _myRotate = value;
                      });
                    }),
                Transform.translate(
                  offset: Offset(0, _myPositionX),
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Image.asset('assets/images/dash_v2.png'),
                  ),
                ),
                Slider(
                    value: _myPositionX,
                    min: -200,
                    max: 200,
                    divisions: 100,
                    label: _myPositionX.toString(),
                    onChanged: (double value) {
                      setState(() {
                        _myPositionX = value;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
