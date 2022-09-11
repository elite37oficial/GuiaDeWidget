import 'package:flutter/material.dart';

import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class FadeTransitionPage extends StatefulWidget {
  const FadeTransitionPage({Key? key}) : super(key: key);

  @override
  State<FadeTransitionPage> createState() => _FadeTransitionPageState();
}

class _FadeTransitionPageState extends State<FadeTransitionPage>
    with TickerProviderStateMixin {
  late final AnimationController _minhaAnimacao = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat(reverse: true);

  late final Animation<double> _animacao =
      CurvedAnimation(parent: _minhaAnimacao, curve: Curves.bounceInOut);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animacao,
          child: const Icon(
            Icons.favorite,
            size: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
