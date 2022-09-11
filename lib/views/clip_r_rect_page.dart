import 'package:flutter/material.dart';

import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class ClipRRectPage extends StatefulWidget {
  const ClipRRectPage({Key? key}) : super(key: key);

  @override
  State<ClipRRectPage> createState() => _ClipRRectPageState();
}

class _ClipRRectPageState extends State<ClipRRectPage> {
  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBarCustom(
          args: args,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: SizedBox(
                      height: 170,
                      width: 200,
                      child: Image.asset('assets/images/dash.png'),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: SizedBox(
                      height: 170,
                      width: 200,
                      child: Image.asset('assets/images/dash.png'),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: SizedBox(
                      height: 170,
                      width: 200,
                      child: Image.asset('assets/images/dash.png'),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: SizedBox(
                      height: 200,
                      width: 200,
                      child: Container(color: Colors.blue),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
