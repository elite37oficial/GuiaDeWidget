import 'package:flutter/material.dart';

class FloatingActionButtonPage extends StatelessWidget {
  const FloatingActionButtonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
      ),
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
