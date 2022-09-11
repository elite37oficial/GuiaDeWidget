import 'package:flutter/material.dart';
import 'package:guiadewidget/components/cards.dart';
import 'package:guiadewidget/data/cardhome_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Guia de Widget'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: listWidget.length,
          itemBuilder: (context, position) {
            return CardHome(
              route: listWidget[position].route,
              title: listWidget[position].title,
              description: listWidget[position].description,
              icon: listWidget[position].icon,
              fileName: listWidget[position].fileName,
              urlVideo: listWidget[position].urlVideo,
            );
          }),
    );
  }
}
