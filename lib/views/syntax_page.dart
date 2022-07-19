import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import '../components/cards.dart';

class SyntaxPage extends StatelessWidget {
  const SyntaxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cardHome args =
        ModalRoute.of(context)?.settings.arguments as cardHome;
    final String code = args.code;

    return Scaffold(
        appBar: AppBar(title: const Text('Este é o Código'), actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: code));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Código copiado!"),
                ));
              },
              child: Icon(
                Icons.copy,
                size: 26.0,
              ),
            ),
          ),
        ]),
        body: SyntaxView(
          code: code, // Code text
          syntax: Syntax.DART, // Language
          syntaxTheme: SyntaxTheme.dracula(), // Theme
          fontSize: 12.0, // Font size
          withZoom: true, // Enable/Disable zoom icon controls
          withLinesCount: true, // Enable/Disable line number
          expanded: true, // Enable/Disable container expansion
        ));
  }
}
