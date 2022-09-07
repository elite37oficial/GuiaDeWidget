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
    title: 'SafeArea',
    description:
        'Um widget que insere seu filho com preenchimento suficiente para evitar invasões do sistema operacional.',
    route: '/safaarea',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'Expanded',
    description:
        'Um widget que expande um filho de uma Linha, Coluna ou Flex para que o filho preencha o espaço disponível.',
    route: '/expanded',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'Wrap',
    description: 'Um widget com quebras automaticas dos seus filhos',
    route: '/wrap',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
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
  ),
  CardHomeModel(
    title: 'FutureBuilder',
    description:
        'Você tem um Future e precisa de alguns widgets pra exibir seu valor? Experimente FutureBuilder! ',
    route: '/FutureBuilder',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'FadeTransition',
    description: 'Anima a opacidade de um widget.',
    route: '/FadeTransition',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'FloatingActionButton',
    description: 'Botão Flutuante ou em sua barra de navegação inferior.',
    route: '/FloatingActionButton',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'PageView',
    description: 'Uma lista rolável que funciona página por página.',
    route: '/PageView',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'Table',
    description:
        'Um widget que usa o algoritmo de layout de tabela para seus filhos.',
    route: '/Table',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'Sliver AppBar',
    description: 'Um AppBar com animação baseando-se ScrollView',
    route: '/SliverAppBar',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'SliverList e SliverGrid',
    description:
        'Um sliver que coloca vários filhos de caixa em uma matriz linear ao longo do eixo principal.',
    route: '/SliverListGrid',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'FadeInImage',
    description:
        'Para evitar o efeito dissonante de imagens pipocando na tela à medida que são carregadas, tente usar FadeInImage! Você pode especificar uma imagem provisória local e definir os parâmetros de altura e de largura para estipular quanto espaço a imagem deve ocupar tão logo for carregada. ',
    route: '/FadeInImage',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'StreamBuilder',
    description:
        'Widget que se constrói com base no último instantâneo de interação com um Stream',
    route: '/StreamBuilder',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'ClipRRect',
    description:
        'Um widget que recorta seu filho usando um retângulo arredondado.',
    route: '/ClipRRect',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'Hero',
    description: 'Uma animação simples e super utilizada!',
    route: '/Hero',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'CustomPaint',
    description: 'Um widget aonde você pode desenhar',
    route: '/CustomPaint',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
  ),
  CardHomeModel(
    title: 'ToolTip',
    description:
        'O widget ToolTip é um ferramenta do "material Desing" usada para informar o usuário sobre a funcionalidade de um botão ou ação na Tela.',
    route: '/ToolTip',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'FittedBox',
    description:
        'FittedBox ajuda a gerenciar as restrições de espaço e o layout de suas caixas.',
    route: '/FittedBox',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'LayoutBuilder',
    description:
        'Constrói uma árvore de widgets que pode depender do tamanho do widget pai.',
    route: '/LayoutBuilder',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'AbsorbPointer',
    description: 'Bloquear um widget de ser clicado ou uma árvore de widget',
    route: '/AbsorbPointer',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'Transform',
    description:
        'Um widget que aplica uma transformação antes de exibir o seu filho.',
    route: '/Transform',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  ),
  CardHomeModel(
    title: 'BackdropFilter',
    description:
        'Um widget que aplica um filtro ao conteúdo desenhado existente e depois desenha o filho.',
    route: '/BackdropFilter',
    code: CodeEmpty.code,
    urlVideo: 'http://www.youtube.com',
    icon: Icons.new_releases,
  )
];
