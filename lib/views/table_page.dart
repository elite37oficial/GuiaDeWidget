import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar.dart';
import 'package:guiadewidget/components/cards.dart';

class TablePage extends StatelessWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: customAppBar(args, context),
      body: Table(
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(30),
            1: FixedColumnWidth(100),
            2: FixedColumnWidth(50),
          },
          border: TableBorder.all(),
          children: [
            TableRow(children: [
              Container(
                color: Colors.blue,
                width: 50,
                height: 100,
              ),
              Container(
                color: Colors.yellow,
                width: 50,
                height: 100,
              ),
              Container(
                color: Colors.green,
                width: 50,
                height: 100,
              )
            ]),
            TableRow(children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.bottom,
                child: Container(
                  color: Colors.black,
                  width: 50,
                  height: 20,
                ),
              ),
              Container(
                color: Colors.black38,
                width: 50,
                height: 100,
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Container(
                  color: Colors.black26,
                  width: 50,
                  height: 20,
                ),
              )
            ])
          ]),
    );
  }
}
