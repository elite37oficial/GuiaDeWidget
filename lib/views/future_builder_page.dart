import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({Key? key}) : super(key: key);

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

final Future<String> _buscaDados =
    Future<String>.delayed(const Duration(seconds: 2), () {
  //return 'info1';
  //throw UnimplementedError('tem um erro');
  Random random = Random();
  return random.nextInt(1000).toString();
});

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
        appBar: AppBarCustom(
          args: args,
        ),
        body: FutureBuilder(
          future: _buscaDados,
          builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            List<Widget> myChildren;
            if (snapshot.hasData) {
              myChildren = <Widget>[
                const Icon(
                  Icons.check_circle,
                  color: Colors.green,
                  size: 50,
                ),
                Text('resposta: ${snapshot.data}'),
              ];
            } else if (snapshot.hasError) {
              myChildren = <Widget>[
                const Icon(
                  Icons.error,
                  color: Colors.red,
                  size: 50,
                )
              ];
            } else {
              myChildren = <Widget>[const CircularProgressIndicator()];
            }

            return Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: myChildren),
            );
          },
        ));
  }
}
