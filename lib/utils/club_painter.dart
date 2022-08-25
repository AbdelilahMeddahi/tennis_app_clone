import 'package:flutter/material.dart';
import 'package:tennis_app_clone/utils/constants.dart';

class ClubPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;
    canvas.drawOval(Rect.fromLTWH(size.height,size.height,size.height,size.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}