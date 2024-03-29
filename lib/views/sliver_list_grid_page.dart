import 'dart:math';

import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';

import 'package:guiadewidget/components/cards.dart';

class SliverListGrid extends StatelessWidget {
  const SliverListGrid({Key? key}) : super(key: key);

  SliverPersistentHeader makeHeader(String hearderText) {
    return SliverPersistentHeader(
        pinned: true,
        delegate: _SliverHeaderDelegate(
            headerTitle: hearderText, backgraundColor: Colors.grey));
  }

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: CustomScrollView(slivers: [
        makeHeader('Sliver Grid'),
        SliverGrid.count(
          crossAxisCount: 4,
          children: [
            for (var i = 0; i < 50; i++)
              Container(
                color: getRondomColor(),
              ),
          ],
        ),
        makeHeader('Sliver List'),
        SliverList(
          delegate: SliverChildListDelegate([
            for (var i = 0; i < 50; i++)
              Container(
                height: 100,
                color: getRondomColor(),
              ),
          ]),
        )
      ]),
    );
  }
}

class _SliverHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String headerTitle;
  final Color backgraundColor;

  _SliverHeaderDelegate(
      {required this.headerTitle, required this.backgraundColor});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: backgraundColor,
      child: Center(
        child: Text(headerTitle),
      ),
    );
  }

  @override
  double get maxExtent => 150;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

Color getRondomColor() {
  return Colors.primaries[Random().nextInt(Colors.primaries.length)];
}
