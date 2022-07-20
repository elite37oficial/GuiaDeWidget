import 'package:flutter/material.dart';

class CustomToolTip extends StatelessWidget {
  const CustomToolTip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<TooltipState> tooltipkey = GlobalKey<TooltipState>();

    return Scaffold(
      appBar: AppBar(title: const Text('ToolTip')),
      body: Center(
        child: Tooltip(
          message: 'Olá eu sou o ToolTip',
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient:
                const LinearGradient(colors: <Color>[Colors.blue, Colors.red]),
          ),
          textStyle: const TextStyle(fontSize: 24, color: Colors.white),
          height: 100,
          padding: const EdgeInsets.all(50.0),
          preferBelow: false,
          key: tooltipkey,
          showDuration: const Duration(seconds: 1),
          waitDuration: const Duration(seconds: 2),
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Eu Tenho uma dica... \nclique aqui e Veja!',
              textAlign: TextAlign.center,
              textScaleFactor: 2,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show Tooltip programmatically on button tap.
          tooltipkey.currentState?.ensureTooltipVisible();
        },
        label: const Text('Exibir Tooltip'),
      ),
    );
  }
}
