import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("AnimatedContainer")),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            child: (Text(
              selected.toString(),
              textAlign: TextAlign.center,
            )),
            width: selected ? 400 : 200,
            height: 200,
            color: selected ? Colors.yellow : Colors.blue,
            duration: const Duration(seconds: 5),
          ),
        ),
      ),
    );
  }
}
