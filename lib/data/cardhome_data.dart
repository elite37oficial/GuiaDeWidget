import 'package:flutter/material.dart';
import '../model/cardhome_model.dart';

final List<CardHome> listWidget = [
  CardHome(
    title: 'SafeArea',
    description:
        'Um widget que insere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.',
    route: '/safaarea',
  ),
  CardHome(
    title: 'Expanded',
    description:
        'Um widget que expande um filho de uma Linha, Coluna ou Flex para que o filho preencha o espaço disponível.',
    route: '/expanded',
  ),
  CardHome(
    title: 'Wrap',
    description: 'Um widget com quebras automaticas dos seus filhos',
    route: '/wrap',
  ),
  CardHome(
    title: 'AnimatedContainer',
    description:
        'Versão animada do Container que muda gradualmente seus valores ao longo de um período de tempo.',
    route: '/AnimatedContainer',
  ),
  CardHome(
    title: 'Opacity',
    description:
        'Um widget que torna seu filho parcialmente transparente ou oculto.',
    route: '/Opacity',
  ),
  CardHome(
    title: 'FutureBuilder',
    description:
        'Você tem um Future e precisa de alguns widgets pra exibir seu valor? Experimente FutureBuilder! ',
    route: '/FutureBuilder',
  ),
  CardHome(
    title: 'FadeTransition',
    description: 'Anima a opacidade de um widget.',
    route: '/FadeTransition',
  ),
  CardHome(
    title: 'FloatingActionButton',
    description: 'Botão Flutuante ou em sua barra de navegação inferior.',
    route: '/FloatingActionButton',
  ),
  CardHome(
    title: 'PageView',
    description: 'Uma lista rolável que funciona página por página.',
    route: '/PageView',
  ),
  CardHome(
    title: 'Table',
    description:
        'Um widget que usa o algoritmo de layout de tabela para seus filhos.',
    route: '/Table',
  ),
  CardHome(
    title: 'Sliver AppBar',
    description: 'Um AppBar com animação baseando-se ScrollView',
    route: '/SliverAppBar',
  ),
  CardHome(
    title: 'SliverList e SliverGrid',
    description:
        'Um sliver que coloca vários filhos de caixa em uma matriz linear ao longo do eixo principal.',
    route: '/SliverListGrid',
  ),
  CardHome(
    title: 'FadeInImage',
    description:
        'Para evitar o efeito dissonante de imagens pipocando na tela à medida que são carregadas, tente usar FadeInImage! Você pode especificar uma imagem provisória local e definir os parâmetros de altura e de largura para estipular quanto espaço a imagem deve ocupar tão logo for carregada. ',
    route: '/FadeInImage',
  ),
  CardHome(
    title: 'StreamBuilder',
    description:
        'Widget que se constrói com base no último instantâneo de interação com um Stream',
    route: '/StreamBuilder',
  ),
  CardHome(
    title: 'ClipRRect',
    description:
        'Um widget que recorta seu filho usando um retângulo arredondado.',
    route: '/ClipRRect',
  ),
  CardHome(
    title: 'Hero',
    description: 'Uma animação simples e super utilizada!',
    route: '/Hero',
  ),
  CardHome(
    title: 'CustomPaint',
    description: 'Um widget aonde você pode desenhar',
    route: '/CustomPaint',
  ),
  CardHome(
    title: 'ToolTip',
    description:
        'O widget ToolTip é um ferramenta do "material Desing" usada para informar o usuário sobre a funcionalidade de um botão ou ação na Tela.',
    route: '/ToolTip',
  ),
  CardHome(
    title: 'FittedBox',
    description:
        'FittedBox ajuda a gerenciar as restrições de espaço e o layout de suas caixas.',
    route: '/FittedBox',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'LayoutBuilder',
    description:
        'Constrói uma árvore de widgets que pode depender do tamanho do widget pai.',
    route: '/LayoutBuilder',
    icon: Icons.new_releases,
  ),
  CardHome(
    title: 'AbsorbPointer',
    description:
        'Quando absorbing for true, esse widget impede que sua subárvore receba eventos de ponteiro.',
    route: '/AbsorbPointer',
    icon: Icons.new_releases,
  ),
];
