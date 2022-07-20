import 'package:flutter/material.dart';

class HeroDetailsPage extends StatelessWidget {
  final String nome, imagem;
  const HeroDetailsPage({Key? key, required this.nome, required this.imagem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Detalhes do Avatar'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            'Nome: $nome',
            textScaleFactor: 3,
            style: const TextStyle(color: Colors.white),
          ),
          Hero(
            tag: nome,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: SizedBox(
                height: 400,
                width: 400,
                child: Image.asset(imagem),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
