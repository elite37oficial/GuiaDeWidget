import 'package:flutter/material.dart';
import 'package:guiadewidget/views/absorb_pointer_page.dart';
import 'package:guiadewidget/views/clip_r_rect_page.dart';
import 'package:guiadewidget/views/custom_paint_page.dart';
import 'package:guiadewidget/views/fade_in_image_page.dart';
import 'package:guiadewidget/views/fitted_box_page.dart';
import 'package:guiadewidget/views/hero_details_page.dart';
import 'package:guiadewidget/views/hero_page.dart';
import 'package:guiadewidget/views/layout_builder_page.dart';
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
import 'package:guiadewidget/views/stream_builder_page.dart';
import 'package:guiadewidget/views/table_page.dart';
import 'package:guiadewidget/views/tooltip_page.dart';
import 'package:guiadewidget/views/wrap_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
          '/FadeInImage': (context) => const FadeInImagePage(),
          '/StreamBuilder': (context) => const StreamBuilderPage(),
          '/ClipRRect': (context) => const ClipRRectPage(),
          '/Hero': (context) => const HeroPage(),
          '/HeroDetails': (context) {
            final args = ModalRoute.of(context)?.settings.arguments as Map;
            return HeroDetailsPage(imagem: args['imagem'], nome: args['nome']);
          },
          '/CustomPaint': (context) => const CustomPaintPage(),
          '/ToolTip': (context) => const CustomToolTip(),
          '/FittedBox': (context) => const FittedBoxCustom(),
          '/LayoutBuilder': (context) => const LayoutBuilderCustom(),
          '/AbsorbPointer': (context) => const AbsorbPointerCustom(),
        });
  }
}
