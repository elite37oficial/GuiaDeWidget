import 'package:flutter/material.dart';

class FittedBoxCustom extends StatelessWidget {
  const FittedBoxCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FittedBox')),
      body: Center(
        child: Container(
            width: 300,
            height: 200,
            color: Colors.black,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.hardEdge,
              child: Opacity(
                opacity: 0.70,
                child: Image.asset('assets/images/dash_v2.png'),
              ),
            )),
      ),
    );
  }
}
