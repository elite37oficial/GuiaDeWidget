import 'package:flutter/material.dart';

import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class FittedBoxCustom extends StatelessWidget {
  const FittedBoxCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
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
