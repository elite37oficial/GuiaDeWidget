import 'package:flutter/material.dart';
import 'package:guiadewidget/components/cards.dart';
import '../data/cardhome_data.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia de Widget'),
      ),
      body: ListView.builder(
          itemCount: listWidget.length,
          itemBuilder: (context, position) {
            return cardHome(
              route: listWidget[position].route,
              title: listWidget[position].title,
              description: listWidget[position].description,
              icon: listWidget[position].icon,
              code: listWidget[position].code,
              urlVideo: listWidget[position].urlVideo,
            );
          }),
    );
  }
}
