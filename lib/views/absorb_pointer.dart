import 'package:flutter/material.dart';

class AbsorbPointerPage extends StatelessWidget {
  const AbsorbPointerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AbsorbPointer'),
        ),
        body: Column(
          children: [
            Row(children: const [
              MyButton(texto: 'Preto', cor: Colors.black),
              MyButton(texto: 'Azul', cor: Colors.blue, ativo: false),
              MyButton(texto: 'Amarelo', cor: Colors.yellow, ativo: false),
            ]),
            AbsorbPointer(
              absorbing: false,
              child: Row(
                children: const [
                  MyButton(texto: 'Verde', cor: Colors.green),
                  MyButton(texto: 'Vermelho', cor: Colors.red),
                  MyButton(texto: 'Cinza', cor: Colors.grey),
                ],
              ),
            )
          ],
        ));
  }
}

class MyButton extends StatelessWidget {
  final Color cor;
  final String texto;
  final bool ativo;

  const MyButton({
    Key? key,
    required this.cor,
    required this.texto,
    this.ativo = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 200.0,
        height: 100.0,
        child: AbsorbPointer(
          absorbing: !ativo,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: cor,
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                duration: const Duration(milliseconds: 300),
                content: Text(texto),
              ));
            },
            child: Text(texto),
          ),
        ),
      ),
    );
  }
}
