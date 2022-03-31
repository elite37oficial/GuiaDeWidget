import 'dart:math';

import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.black38,
            expandedHeight: 160,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('SliverAppBar'),
              background: Image.network(
                  'https://elite37.com.br/wallpapers/min/wallpaper5_min.png'),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(((context, index) {
            return Container(
              width: 100,
              color: getRondomColor(),
              child: Center(
                child: Text('$index', textScaleFactor: 4),
              ),
            );
          }), childCount: 100))
        ],
      ),
    );
  }
}

Color getRondomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
