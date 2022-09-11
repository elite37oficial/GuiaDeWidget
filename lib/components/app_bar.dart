import 'package:flutter/material.dart';
import 'package:guiadewidget/utils/launcher_url_utils.dart';
import 'cards.dart';

AppBar customAppBar(CardHome args, BuildContext context) {
  LaucherUrl laucher = LaucherUrl();
  return AppBar(title: Text(args.title), actions: <Widget>[
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
          laucher.goUrl(url: args.urlVideo);
        },
        child: const Icon(
          Icons.smart_display,
          size: 26.0,
        ),
      ),
    )
  ]);
}
