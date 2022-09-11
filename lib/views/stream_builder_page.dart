import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class StreamBuilderPage extends StatelessWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  Stream<int> contador() async* {
    await Future.delayed(const Duration(seconds: 5));
    for (int i = 0; i <= 100; i++) {
      if (i == 50) {
        throw UnimplementedError('tem um erro');
      }
      await Future.delayed(const Duration(milliseconds: 50));
      yield i;
    }
  }

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
      body: Center(
          child: StreamBuilder(
        stream: contador(),
        builder: ((context, snapshot) {
          List<Widget> myWidgets = [Container()];

          if (!snapshot.hasData &&
              snapshot.connectionState != ConnectionState.waiting) {
            myWidgets = [
              const Icon(
                Icons.error_outline,
                color: Colors.red,
                size: 100,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text('Erro!'),
              )
            ];
          } else {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                myWidgets = [
                  const SizedBox(
                    width: 60,
                    height: 60,
                    child: CircularProgressIndicator(),
                  )
                ];
                break;
              case ConnectionState.active:
                myWidgets = [
                  const Icon(
                    Icons.info,
                    color: Colors.blue,
                    size: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(snapshot.data.toString(), textScaleFactor: 5),
                  )
                ];
                break;
              case ConnectionState.done:
                myWidgets = [
                  const Icon(
                    Icons.info,
                    color: Colors.green,
                    size: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(snapshot.data.toString() + ('Fim'),
                        textScaleFactor: 5),
                  )
                ];
                break;
              case ConnectionState.none:
                myWidgets = [Container()];
                break;
            }
          }
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: myWidgets,
          );
        }),
      )),
    );
  }
}
