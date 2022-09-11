import 'package:flutter/material.dart';
import 'package:guiadewidget/model/cardhome_model.dart';

final List<CardHomeModel> listWidget = [
  CardHomeModel(
    title: 'SafeArea',
    description:
        'Um widget que insere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.',
    route: '/safaarea',
    fileName: 'safearea_page',
    urlVideo: 'https://youtu.be/1o9asZsmETk',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Expanded',
    description:
        'Um widget que expande um filho de uma Linha, Coluna ou Flex para que o filho preencha o espaço disponível.',
    route: '/expanded',
    fileName: 'expanded_page',
    urlVideo: 'https://youtu.be/8F6pKT0YVy0',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Wrap',
    description: 'Um widget com quebras automaticas dos seus filhos',
    route: '/wrap',
    fileName: 'wrap_page',
    urlVideo: 'https://youtu.be/uZQXRocZBQ0',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'AnimatedContainer',
    description:
        'Versão animada do Container que muda gradualmente seus valores ao longo de um período de tempo.',
    route: '/AnimatedContainer',
    fileName: 'animated_container_page',
    urlVideo: 'https://youtu.be/nwfwVYiSHjc',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Opacity',
    description:
        'Um widget que torna seu filho parcialmente transparente ou oculto.',
    route: '/Opacity',
    fileName: 'opacity_page',
    urlVideo: 'https://youtu.be/U7cwvxIm06E',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'FutureBuilder',
    description:
        'Você tem um Future e precisa de alguns widgets pra exibir seu valor? Experimente FutureBuilder! ',
    route: '/FutureBuilder',
    fileName: 'future_builder_page',
    urlVideo: 'https://youtu.be/kyS4NFlI_H4',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'FadeTransition',
    description: 'Anima a opacidade de um widget.',
    route: '/FadeTransition',
    fileName: 'fade_transition_page',
    urlVideo: 'https://youtu.be/BCCjurn7FT4',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'FloatingActionButton',
    description: 'Botão Flutuante ou em sua barra de navegação inferior.',
    route: '/FloatingActionButton',
    fileName: 'floating_action_button_page',
    urlVideo: 'https://youtu.be/rGfA6GIFxj8',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'PageView',
    description: 'Uma lista rolável que funciona página por página.',
    route: '/PageView',
    fileName: 'page_view',
    urlVideo: 'https://youtu.be/l4XRS3cPRsM',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Table',
    description:
        'Um widget que usa o algoritmo de layout de tabela para seus filhos.',
    route: '/Table',
    fileName: 'table_page',
    urlVideo: 'https://youtu.be/pDc1-wOjVag',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Sliver AppBar',
    description: 'Um AppBar com animação baseando-se ScrollView',
    route: '/SliverAppBar',
    fileName: 'sliver_app_bar_page',
    urlVideo: 'hhttps://youtu.be/wd_cRzxuhWU',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'SliverList e SliverGrid',
    description:
        'Um sliver que coloca vários filhos de caixa em uma matriz linear ao longo do eixo principal.',
    route: '/SliverListGrid',
    fileName: 'sliver_list_grid_page',
    urlVideo: 'http://www.youtube.com',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'FadeInImage',
    description:
        'Para evitar o efeito dissonante de imagens pipocando na tela à medida que são carregadas, tente usar FadeInImage! Você pode especificar uma imagem provisória local e definir os parâmetros de altura e de largura para estipular quanto espaço a imagem deve ocupar tão logo for carregada. ',
    route: '/FadeInImage',
    fileName: 'fade_in_image',
    urlVideo: 'https://youtu.be/7XB6PiQ5Dso',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'StreamBuilder',
    description:
        'Widget que se constrói com base no último instantâneo de interação com um Stream',
    route: '/StreamBuilder',
    fileName: 'stream_builder_page',
    urlVideo: 'https://youtu.be/RhusbeD8H-g',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'ClipRRect',
    description:
        'Um widget que recorta seu filho usando um retângulo arredondado.',
    route: '/ClipRRect',
    fileName: 'clip_r_rect_page',
    urlVideo: 'https://youtu.be/zHjM31UgrAM',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'Hero',
    description: 'Uma animação simples e super utilizada!',
    route: '/Hero',
    fileName: 'hero_page',
    urlVideo: 'https://youtu.be/yrxdFxuWIlE',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'CustomPaint',
    description: 'Um widget aonde você pode desenhar',
    route: '/CustomPaint',
    fileName: 'custom_paint_page',
    urlVideo: 'https://youtu.be/rYASCXyA8oI',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'ToolTip',
    description:
        'O widget ToolTip é um ferramenta do "material Desing" usada para informar o usuário sobre a funcionalidade de um botão ou ação na Tela.',
    route: '/ToolTip',
    fileName: 'tooltip_page',
    urlVideo: 'https://youtu.be/2_wd23HCnn0',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'FittedBox',
    description:
        'FittedBox ajuda a gerenciar as restrições de espaço e o layout de suas caixas.',
    route: '/FittedBox',
    fileName: 'fitted_box_page',
    urlVideo: 'https://youtu.be/if2sBdhHMtM',
    icon: Icons.flutter_dash,
  ),
  CardHomeModel(
    title: 'LayoutBuilder',
    description:
        'Constrói uma árvore de widgets que pode depender do tamanho do widget pai.',
    route: '/LayoutBuilder',
    fileName: 'layout_builder_page',
    urlVideo: 'https://youtu.be/VyAfiAu6_-g',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'AbsorbPointer',
    description: 'Bloquear um widget de ser clicado ou uma árvore de widget',
    route: '/AbsorbPointer',
    fileName: 'absorb_pointer_page',
    urlVideo: 'https://youtu.be/nHZegbYTZIE',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'Transform',
    description:
        'Um widget que aplica uma transformação antes de exibir o seu filho.',
    route: '/Transform',
    fileName: 'transform_page',
    urlVideo: '',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'BackdropFilter',
    description:
        'Um widget que aplica um filtro ao conteúdo desenhado existente e depois desenha o filho.',
    route: '/BackdropFilter',
    fileName: 'backdropfilter_page',
    urlVideo: '',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'Align',
    description:
        'Um widget que alinha seu filho dentro de si e, opcionalmente, se dimensiona com base no tamanho do filho.',
    route: '/Align',
    fileName: 'align_page',
    urlVideo: '',
    icon: Icons.new_releases,
  )
];
