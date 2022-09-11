import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_syntax_view/flutter_syntax_view.dart';

import 'package:guiadewidget/components/cards.dart';

class SyntaxPage extends StatefulWidget {
  const SyntaxPage({Key? key}) : super(key: key);

  @override
  State<SyntaxPage> createState() => _SyntaxPageState();
}

class _SyntaxPageState extends State<SyntaxPage> {
  String sourceCode = '';
  late CardHome args;

  readSourceCode(String fileName) async {
    try {
      String resp =
          // await rootBundle.loadString('assets/pages/' + fileName + '.txt');
          await rootBundle.loadString('lib/views/' + fileName + '.dart');
      // setState(() {
      setState(() {
        sourceCode = resp;
      });
    } catch (e) {
      return sourceCode = e.toString();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    args = ModalRoute.of(context)?.settings.arguments as CardHome;
    if (sourceCode == '') {
      readSourceCode(args.fileName);
    }

    return Scaffold(
        appBar: AppBar(title: const Text('Este é o Código'), actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: sourceCode));
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Código copiado!"),
                ));
              },
              child: const Icon(
                Icons.copy,
                size: 26.0,
              ),
            ),
          ),
        ]),
        body: SyntaxView(
          code: sourceCode, // Code text
          syntax: Syntax.DART, // Language
          syntaxTheme: SyntaxTheme.dracula(), // Theme
          fontSize: 12.0, // Font size
          withZoom: true, // Enable/Disable zoom icon controls
          withLinesCount: true, // Enable/Disable line number
          expanded: true, // Enable/Disable container expansion
        ));
  }
}
