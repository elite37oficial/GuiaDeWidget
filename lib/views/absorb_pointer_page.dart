import 'package:flutter/material.dart';

class AbsorbPointerCustom extends StatefulWidget {
  const AbsorbPointerCustom({Key? key}) : super(key: key);

  @override
  State<AbsorbPointerCustom> createState() => _AbsorbPointerCustomState();
}

class _AbsorbPointerCustomState extends State<AbsorbPointerCustom> {
  bool bloqueiaVerde = false;
  bool bloqueiaVermelho = false;
  final snackBarVermelho = const SnackBar(
    backgroundColor: Colors.red,
    content: Text('Vermelho clicado!'),
  );
  final snackBarVerde = const SnackBar(
    backgroundColor: Colors.green,
    content: Text('Verde clicado!'),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AbsorbPointer'),
        ),
        body: Center(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  SizedBox(
                    width: 200.0,
                    height: 100.0,
                    child: AbsorbPointer(
                      absorbing: bloqueiaVermelho,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarVermelho);
                        },
                        child: null,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100.0,
                    height: 200.0,
                    child: AbsorbPointer(
                      absorbing: bloqueiaVerde,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context)
                              .showSnackBar(snackBarVerde);
                        },
                        child: null,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 200,
                height: 200,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Bloqueia o verde'),
                        Switch(
                            value: bloqueiaVerde,
                            onChanged: (bool newValue) {
                              setState(() {
                                bloqueiaVerde = newValue;
                              });
                            }),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Bloqueia o vermelho'),
                        Switch(
                            value: bloqueiaVermelho,
                            onChanged: (bool newValue) {
                              setState(() {
                                bloqueiaVermelho = newValue;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
