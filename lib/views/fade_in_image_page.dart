import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInImagePage extends StatelessWidget {
  const FadeInImagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
        appBar: customAppBar(args, context),
        body: SingleChildScrollView(
          child: Column(
            children: const [
              MinhaImagemAsset(
                  url: 'https://elite37.com.br/wallpapers/wallpaper1.png'),
              MinhaImagemAsset(
                  url: 'https://elite37.com.br/wallpapers/wallpaper2.png'),
              MinhaImagemAsset(
                  url: 'https://elite37.com.br/wallpapers/wallpaper3.png'),
              MinhaImagemFadeIn(
                  url: 'https://elite37.com.br/wallpapers/wallpaper4.png'),
              MinhaImagemFadeIn(
                  url: 'https://elite37.com.br/wallpapers/wallpaper5.png'),
            ],
          ),
        ));
  }
}

class MinhaImagem extends StatelessWidget {
  final String url;
  const MinhaImagem({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          url,
          height: 100,
        ),
      ),
    );
  }
}

class MinhaImagemFadeIn extends StatelessWidget {
  final String url;
  const MinhaImagemFadeIn({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 100,
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FadeInImage.memoryNetwork(
              fadeInDuration: const Duration(seconds: 2),
              fadeInCurve: Curves.bounceIn,
              placeholder: kTransparentImage,
              image: url,
              height: 100,
            ),
          ),
        )
      ],
    );
  }
}

class MinhaImagemAsset extends StatelessWidget {
  final String url;
  const MinhaImagemAsset({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeInImage.assetNetwork(
          fadeInDuration: const Duration(seconds: 2),
          fadeInCurve: Curves.bounceIn,
          placeholder: 'assets/images/loading.gif',
          image: url,
          height: 100,
        ),
      ),
    );
  }
}
