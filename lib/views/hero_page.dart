import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: Column(children: [
        const Expanded(
          flex: 8,
          child: Center(
              child: Text(
            'Escolha seu Avatar:',
            textScaleFactor: 3,
          )),
        ),
        Expanded(
          flex: 2,
          child: Row(
            children: const [
              Avatar(nome: 'Basicão', imagem: 'assets/images/dash_v1.png'),
              Avatar(nome: 'Super Dash', imagem: 'assets/images/dash_v2.png'),
              Avatar(nome: 'Fortão', imagem: 'assets/images/dash_v3.png'),
            ],
          ),
        )
      ]),
    );
  }
}

class Avatar extends StatelessWidget {
  final String nome, imagem;
  const Avatar({Key? key, required this.nome, required this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Hero(
          tag: nome,
          child: SizedBox(
            height: 100,
            width: 100,
            child: Image.asset(imagem),
          ),
        ),
        onTap: () {
          Navigator.of(context).pushNamed('/HeroDetails', arguments: {
            'imagem': imagem,
            'nome': nome,
          });
        },
      ),
    );
  }
}
