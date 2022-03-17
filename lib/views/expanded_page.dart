import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  _SafeareaPageState createState() => _SafeareaPageState();
}

class _SafeareaPageState extends State<ExpandedPage> {
  var bloco3 = 1;
  var bloco1 = 6;
  var bloco2 = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#2 Expanded'),
      ),
      body: Row(children: [
        Expanded(
          flex: bloco2,
          child: Container(
              // width: 50,
              height: 50,
              color: Colors.green,
              child: Center(child: Text(bloco2.toString()))),
        ),
        Expanded(
          flex: bloco1,
          child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: Center(child: Text(bloco1.toString()))),
        ),
        Expanded(
          flex: bloco3,
          child: Container(
              // width: 100,
              height: 50,
              color: Colors.yellow,
              child: Center(child: Text(bloco3.toString()))),
        )
      ]),
    );
  }
}
