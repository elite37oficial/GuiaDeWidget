import 'package:flutter/material.dart';
import '../model/cardhome_model.dart';

final List<CardHome> listWidget = [
  CardHome(
      title: 'SafeArea',
      description:
          'Um widget que insere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.',
      route: '/safaarea',
      icon: Icons.new_releases),
  CardHome(
      title: 'Expanded',
      description:
          'Um widget que expande um filho de uma Linha, Coluna ou Flex para que o filho preencha o espaço disponível.',
      route: '/expanded',
      icon: Icons.new_releases),
  CardHome(
    title: 'Wrap',
    description: 'Um widget com quebras automaticas dos seus filhos',
    route: '/wrap',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'AnimatedContainer',
    description:
        'Versão animada do Container que muda gradualmente seus valores ao longo de um período de tempo.',
    route: '/AnimatedContainer',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'Opacity',
    description:
        'Um widget que torna seu filho parcialmente transparente ou oculto.',
    route: '/Opacity',
    icon: Icons.new_releases,
  ),
];
