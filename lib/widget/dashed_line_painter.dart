import 'dart:ui';

import 'package:flutter/material.dart';

class DashedLinePainter extends CustomPainter {
  final bool strongPoints;

  const DashedLinePainter({this.strongPoints = false});

  @override
  void paint(Canvas canvas, Size size) {
    drawPoints(size, canvas);
  }

  void drawPoints(Size size, Canvas canvas) {
    final Paint pointPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.black.withOpacity(0.35)
      ..strokeWidth = 6.0;

    final Paint strongPointPaint = Paint()
      ..strokeCap = StrokeCap.round
      ..color = Colors.black.withOpacity(0.75)
      ..strokeWidth = 8.0;

    final Paint paint = strongPoints ? strongPointPaint : pointPaint;

    const offsetY = 20.0;
    const dotHeight = 4.0;
    const dotSpacing = 12.0;
    const dotSize = dotHeight + dotSpacing;

    final pointsCount = size.height ~/ dotSize;
    final points = List.generate(
      pointsCount,
      (index) => Offset(0.0, offsetY + dotSpacing + index * dotSize),
    );

    canvas.drawPoints(PointMode.points, points, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
