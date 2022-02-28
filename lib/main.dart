import 'package:flutter/material.dart';
// import 'package:guiadewidget/views/expanded_page.dart';
import 'package:guiadewidget/views/home_page.dart';
import 'package:guiadewidget/views/safearea_page.dart';
// import 'package:guiadewidget/views/safearea_page.dart';
// import 'package:guiadewidget/views/wrap_page.dart';

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
          // '/expanded': (context) => const ExpandedPage(),
          // '/wrap': (context)=> const WrapPage(),
        });
  }
}
