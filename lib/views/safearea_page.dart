import 'package:flutter/material.dart';

class SafeareaPage extends StatelessWidget {
  const SafeareaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                color: Colors.yellow,
                width: 200,
                height: 70,
              ),
              Container(
                color: Colors.black,
                width: 200,
                height: 70,
              ),
              Container(
                color: Colors.blue,
                width: 200,
                height: 70,
              )
            ]),
      ),
    );
  }
}
