import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:guiadewidget/components/app_bar_custom.dart';
import 'package:guiadewidget/components/cards.dart';

class CustomPaintPage extends StatelessWidget {
  const CustomPaintPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CardHome args =
        ModalRoute.of(context)?.settings.arguments as CardHome;
    return Scaffold(
      appBar: AppBarCustom(
        args: args,
      ),
      body: Wrap(
        direction: Axis.horizontal,
        spacing: 5,
        children: [
          Container(
            color: Colors.black12,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: MyPainterPonts(),
            ),
          ),
          Container(
            color: Colors.black12,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: MyPainterLines(),
            ),
          ),
          Container(
            color: Colors.black12,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: MyPainterRect(),
            ),
          ),
          Container(
            color: Colors.black12,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: MyPainterRect2(),
            ),
          ),
          Container(
            color: Colors.black12,
            child: CustomPaint(
              size: const Size(150, 150),
              painter: MyPainterCircule(),
            ),
          ),
        ],
      ),
    );
  }
}

class MyPainterCircule extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const center = Offset(75, 75);
    const radius = 50.0;
    final paint4 = Paint()
      ..color = Colors.green
      ..style = PaintingStyle.fill
      ..strokeWidth = 4;
    canvas.drawCircle(center, radius, paint4);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class MyPainterRect extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const left = 10.0;
    const top = 10.0;
    const right = 70.0;
    const bottom = 70.0;
    const rect = Rect.fromLTRB(left, top, right, bottom);
    final paint3 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawRect(rect, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class MyPainterRect2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const left = 10.0;
    const top = 10.0;
    const right = 120.0;
    const bottom = 70.0;
    const rect = Rect.fromLTRB(left, top, right, bottom);
    final paint3 = Paint()
      ..color = Colors.pink
      ..style = PaintingStyle.stroke
      ..strokeWidth = 4;
    canvas.drawRect(rect, paint3);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class MyPainterLines extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const p1 = Offset(10, 10);
    const p2 = Offset(100, 100);
    final paint2 = Paint()
      ..color = Colors.black
      ..strokeWidth = 10;
    canvas.drawLine(p1, p2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}

class MyPainterPonts extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const pointMode = PointMode.points;

    final points = [
      const Offset(75, 10),
      const Offset(10, 10),
      const Offset(90, 75),
      const Offset(25, 90),
    ];

    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.square;

    canvas.drawPoints(pointMode, points, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    throw UnimplementedError();
  }
}
