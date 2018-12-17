import 'dart:ui';

import 'package:flutter/material.dart';

class RoundedLinePainter extends CustomPainter {
  final Color color;

  const RoundedLinePainter({
    this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final offsetY = size.width / 2;

    drawLine(canvas, size, offsetY);
    drawPoints(size, canvas, offsetY);
  }

  void drawPoints(Size size, Canvas canvas, double offsetY) {
    final Paint paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.white
      ..strokeWidth = size.width / 2;

    final List<Offset> markedPoints = [
      Offset(0.0, offsetY + 2.0),
      Offset(0.0, size.height + offsetY - 2.0),
    ];

    canvas.drawPoints(PointMode.points, markedPoints, paint);
  }

  void drawLine(Canvas canvas, Size size, double offsetY) {
    final Paint paint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = color
      ..strokeWidth = size.width;

    final start = Offset(0.0, offsetY);
    final end = Offset(0.0, offsetY + size.height);
    canvas.drawLine(start, end, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
