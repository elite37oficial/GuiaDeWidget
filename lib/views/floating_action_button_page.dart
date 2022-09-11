import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.favorite),
        mini: false,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.yellow,
        child: Container(height: 50),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
