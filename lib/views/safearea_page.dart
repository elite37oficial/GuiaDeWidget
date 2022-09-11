import 'package:flutter/material.dart';
import 'package:guiadewidget/components/cards.dart';
import 'package:guiadewidget/components/app_bar.dart';

class SafeareaPage extends StatelessWidget {
  const SafeareaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
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
