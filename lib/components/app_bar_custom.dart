import 'package:flutter/material.dart';
import 'package:guiadewidget/utils/launcher_url_utils.dart';
import 'cards.dart';

class AppBarCustom extends AppBar {
  AppBarCustom({required CardHome args, super.key})
      : super(title: Text(args.title), actions: <Widget>[
          Builder(builder: (context) {
            return Padding(
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
            );
          }),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () async {
                LaucherUrl laucher = LaucherUrl();
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
