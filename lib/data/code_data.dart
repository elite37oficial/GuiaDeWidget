import '../model/code_model.dart';

final List<CodeModel> listCode = [
  CodeModel(
    title: 'SafeArea',
    code: """
import 'package:flutter/material.dart';

class SafeareaPage extends StatelessWidget {
  const SafeareaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Safearea'), actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.code,
              size: 26.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: Icon(
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

           """,
  ),
  CodeModel(
    title: 'Expanded',
    code: """
import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({Key? key}) : super(key: key);

  @override
  _SafeareaPageState createState() => _SafeareaPageState();
}

class _SafeareaPageState extends State<ExpandedPage> {
  var bloco1 = 6;
  var bloco2 = 3;
  var bloco3 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#2 Expanded'),
      ),
      body: Row(children: [
        Expanded(
          flex: bloco1,
          child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
              child: Center(child: Text(bloco1.toString()))),
        ),
        Expanded(
          flex: bloco2,
          child: Container(
              // width: 50,
              height: 50,
              color: Colors.green,
              child: Center(child: Text(bloco2.toString()))),
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

           """,
  ),
  CodeModel(
    title: 'Wrap',
    code: """
import 'package:flutter/material.dart';

class WrapPage extends StatefulWidget {
  const WrapPage({Key? key}) : super(key: key);

  @override
  _SafeareaPageState createState() => _SafeareaPageState();
}

class _SafeareaPageState extends State<WrapPage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('#3 Wrap'),
        ),
        body: Wrap(
          direction: Axis.vertical,
          spacing: 5,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.purple,
            ),
          ],
        ));
  }
}

           """,
  ),
  CodeModel(
    title: 'AnimatedContainer',
    code: """
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
            duration: Duration(seconds: 5),
          ),
        ),
      ),
    );
  }
}


           """,
  ),
  CodeModel(
    title: 'Opacity',
    code: """
import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  const OpacityPage({Key? key}) : super(key: key);

  @override
  State<OpacityPage> createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {
  double _visible = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          Container(width: 100, height: 100, color: Colors.blue),
          Opacity(
              opacity: _visible,
              child: Container(width: 100, height: 100, color: Colors.green)),
          Container(width: 100, height: 100, color: Colors.yellow),
          Slider(
              value: _visible,
              min: 0,
              max: 1,
              onChanged: (double newValue) {
                setState(() {
                  _visible = newValue;
                });
              }),
        ]),
      ),
    );
  }
}


           """,
  ),
  CodeModel(
    title: 'Veja o Código',
    code: '{teste}',
  ),
];
