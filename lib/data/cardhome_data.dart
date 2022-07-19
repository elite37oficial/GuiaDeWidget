import 'package:flutter/material.dart';
import 'package:guiadewidget/data/code_data.dart';
import '../model/cardhome_model.dart';

final List<CardHomeModel> listWidget = [
  CardHomeModel(
      title: 'SafeArea',
      description:
          'Um widget que insere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.',
      route: '/safaarea',
      code: listCode[0].code,
      urlVideo: 'https://youtu.be/1o9asZsmETk',
      icon: Icons.new_releases),
  CardHomeModel(
      title: 'Expanded',
      description:
          'Um widget que expande um filho de uma Linha, Coluna ou Flex para que o filho preencha o espaço disponível.',
      route: '/expanded',
      code: listCode[1].code,
      urlVideo: 'http://www.youtube.com',
      icon: Icons.new_releases),
  CardHomeModel(
    title: 'Wrap',
    description: 'Um widget com quebras automaticas dos seus filhos',
    route: '/wrap',
    code: listCode[2].code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'AnimatedContainer',
    description:
        'Versão animada do Container que muda gradualmente seus valores ao longo de um período de tempo.',
    route: '/AnimatedContainer',
    code: listCode[3].code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'Opacity',
    description:
        'Um widget que torna seu filho parcialmente transparente ou oculto.',
    route: '/Opacity',
    code: listCode[4].code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'Veja o Código',
    description: 'teste',
    route: '/Syntax',
    code: listCode[5].code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
];
