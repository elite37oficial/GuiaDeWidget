import 'dart:math';

import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliver List & Grid'),
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
