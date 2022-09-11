import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class AlignPage extends StatefulWidget {
  const AlignPage({Key? key}) : super(key: key);

  @override
  State<AlignPage> createState() => _AlignPageState();
}

class _AlignPageState extends State<AlignPage> {
  Alignment _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 400.0,
              width: 400.0,
              color: Colors.black,
              child: Align(
                alignment: _alignment,
                child: Image.asset('assets/images/logoElite37.png'),
              ),
            ),
            Wrap(
              direction: Axis.horizontal,
              children: [
                opcoes(alinhamento: Alignment.bottomCenter),
                opcoes(alinhamento: Alignment.bottomLeft),
                opcoes(alinhamento: Alignment.bottomRight),
                opcoes(alinhamento: Alignment.center),
                opcoes(alinhamento: Alignment.centerLeft),
                opcoes(alinhamento: Alignment.centerRight),
                opcoes(alinhamento: Alignment.topCenter),
                opcoes(alinhamento: Alignment.topLeft),
                opcoes(alinhamento: Alignment.topRight),
              ],
            ),
          ],
        ),
      ),
    );
  }

  SizedBox opcoes({required Alignment alinhamento}) {
    return SizedBox(
      width: 200,
      height: 30,
      child: ListTile(
        title: Text((alinhamento).toString().split('.').last),
        leading: Radio(
          value: alinhamento,
          groupValue: _alignment,
          onChanged: (Alignment? value) {
            setState(() {
              _alignment = value!;
            });
          },
        ),
      ),
    );
  }
}
