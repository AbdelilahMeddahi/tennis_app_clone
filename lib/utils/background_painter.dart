import 'package:flutter/material.dart';
import 'package:tennis_app_clone/utils/constants.dart';

class BackgroundPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.grey.shade800
      ..strokeWidth = 0.4
      ..style = PaintingStyle.stroke;
    canvas.drawOval(Rect.fromLTWH(size.height,size.height,size.height,size.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}