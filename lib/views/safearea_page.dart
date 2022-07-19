import 'package:flutter/material.dart';
import 'package:guiadewidget/components/cards.dart';

import '../utils/launcher_url_utils.dart';

class SafeareaPage extends StatelessWidget {
  const SafeareaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<void>? _launched;
    LaucherUrl laucher = LaucherUrl();
    final cardHome args =
        ModalRoute.of(context)?.settings.arguments as cardHome;
    return Scaffold(
      appBar: AppBar(title: Text(args.title), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/Syntax', arguments: args);
            },
            child: const Icon(
              Icons.code,
              size: 26.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () async {
              _launched = laucher.goUrl(url: args.urlVideo);
            },
            child: const Icon(
              Icons.smart_display,
              size: 26.0,
            ),
          ),
        )
      ]),
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
