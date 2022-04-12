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
  CardHome(
    title: 'FutureBuilder',
    description:
        'Você tem um Future e precisa de alguns widgets pra exibir seu valor? Experimente FutureBuilder! ',
    route: '/FutureBuilder',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'FadeTransition',
    description: 'Anima a opacidade de um widget.',
    route: '/FadeTransition',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'FloatingActionButton',
    description: 'Botão Flutuante ou em sua barra de navegação inferior.',
    route: '/FloatingActionButton',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'PageView',
    description: 'Uma lista rolável que funciona página por página.',
    route: '/PageView',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'Table',
    description:
        'Um widget que usa o algoritmo de layout de tabela para seus filhos.',
    route: '/Table',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'Sliver AppBar',
    description: 'Um AppBar com animação baseando-se ScrollView',
    route: '/SliverAppBar',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'SliverList e SliverGrid',
    description:
        'Um sliver que coloca vários filhos de caixa em uma matriz linear ao longo do eixo principal.',
    route: '/SliverListGrid',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'FadeInImage',
    description:
        'Para evitar o efeito dissonante de imagens pipocando na tela à medida que são carregadas, tente usar FadeInImage! Você pode especificar uma imagem provisória local e definir os parâmetros de altura e de largura para estipular quanto espaço a imagem deve ocupar tão logo for carregada. ',
    route: '/FadeInImage',
    icon: Icons.new_releases,
  ),
];
