import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class AbsorbPointerPage extends StatelessWidget {
  const AbsorbPointerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
        appBar: AppBarCustom(
          args: args,
        ),
        body: Column(
          children: [
            Row(children: const [
              Flexible(child: MyButton(texto: 'Preto', cor: Colors.black)),
              Flexible(child: MyButton(texto: 'Azul', cor: Colors.blue)),
            ]),
            AbsorbPointer(
              absorbing: true,
              child: Row(
                children: const [
                  Flexible(child: MyButton(texto: 'Verde', cor: Colors.green)),
                  Flexible(child: MyButton(texto: 'Vermelho', cor: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Verde e vermelho estão em uma Row e envolvidos com o AbsorbPointer!",
                style: TextStyle(fontSize: 26, color: Colors.blueGrey),
                textAlign: TextAlign.center,
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
              backgroundColor: cor,
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
