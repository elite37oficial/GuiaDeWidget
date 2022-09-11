import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
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
