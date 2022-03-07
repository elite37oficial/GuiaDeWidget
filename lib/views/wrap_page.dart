import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  _SafeareaPageState createState() => _SafeareaPageState();
}

class _SafeareaPageState extends State<WrapPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('#3 Wrap'),
        ),
        body: Wrap(
          direction: Axis.vertical,
          spacing: 5,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ],
        ));
  }
}
