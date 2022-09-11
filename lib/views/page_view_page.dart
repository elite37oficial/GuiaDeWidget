import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class PageViewPage extends StatelessWidget {
  const PageViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController pageViewController = PageController(initialPage: 0);
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
      body: PageView(
        controller: pageViewController,
        scrollDirection: Axis.vertical,
        pageSnapping: false,
        children: [
          page1(),
          page2(),
          page3(),
        ],
      ),
    );
  }
}

page1() {
  return Container(
    color: Colors.black87,
    child: const Icon(
      Icons.favorite,
      color: Colors.blue,
      size: 100,
    ),
  );
}

page2() {
  return Container(
    color: Colors.white,
    child: const Icon(
      Icons.battery_alert,
      color: Colors.red,
      size: 100,
    ),
  );
}

page3() {
  return Container(
    color: Colors.black26,
    child: const Icon(
      Icons.bike_scooter,
      color: Colors.yellow,
      size: 100,
    ),
  );
}
