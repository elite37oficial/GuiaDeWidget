import 'package:flutter/material.dart';
import 'package:guiadewidget/views/sliver_app_bar.dart';
import 'package:guiadewidget/views/animated_container_page.dart';
import 'package:guiadewidget/views/expanded_page.dart';
import 'package:guiadewidget/views/fade_transition_page.dart';
import 'package:guiadewidget/views/floating_action_button_page.dart';
import 'package:guiadewidget/views/future_builder_page.dart';
import 'package:guiadewidget/views/home_page.dart';
import 'package:guiadewidget/views/opacity_page.dart';
import 'package:guiadewidget/views/page_view_page.dart';
import 'package:guiadewidget/views/safearea_page.dart';
import 'package:guiadewidget/views/sliver_list_grid_page.dart';
import 'package:guiadewidget/views/table_page.dart';
import 'package:guiadewidget/views/wrap_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Guia De Widget',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => HomePage(),
          '/safaarea': (context) => const SafeareaPage(),
          '/expanded': (context) => const ExpandedPage(),
          '/wrap': (context) => const WrapPage(),
          '/AnimatedContainer': (context) => const AnimatedContainerPage(),
          '/Opacity': (context) => const OpacityPage(),
          '/FutureBuilder': (context) => const FutureBuilderPage(),
          '/FadeTransition': (context) => const FadeTransitionPage(),
          '/FloatingActionButton': (context) =>
              const FloatingActionButtonPage(),
          '/PageView': (context) => const PageViewPage(),
          '/Table': (context) => const TablePage(),
          '/SliverAppBar': (context) => const MySliverAppBar(),
          '/SliverListGrid': (context) => const SliverListGrid(),
        });
  }
}
