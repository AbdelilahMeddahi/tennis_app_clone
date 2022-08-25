import 'package:flutter/material.dart';
import 'package:tennis_app_clone/utils/club_painter.dart';

import '../utils/constants.dart';

class ClubWidget extends StatelessWidget {
  final String heading;
  final String number_of_events;
  final String image;
  final double bottom;
  final double right;
  final Color color;
  final String level;
  const ClubWidget({
    Key? key, required this.heading, required this.number_of_events, required this.image, required this.bottom, required this.right, required this.color, required this.level,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: color,
      ),
      child: Stack(
        children: [
          Positioned(
            top: -380,
            left: -300,
            child: CustomPaint(
              size: Size(280, 280),
              painter: ClubPainter(),
            ),
          ),
          Positioned(
            bottom: 80,
            left: -300,
            child: CustomPaint(
              size: Size(220, 220),
              painter: ClubPainter(),
            ),
          ),
          Positioned(
            top: 30,
            left: 30,
            child: Text(
              heading,
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
          ),
          Positioned(
            left: 30,
            top: 310,
            child: Text(
              number_of_events,
              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18,),
            ),
          ),
          Positioned(
            top: 100,
            left: 30,
            child: Container(
              height: 35,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(child: Text(level,style: TextStyle(fontWeight: FontWeight.w500),)),
            ),
          ),
          Positioned(
            bottom: bottom,
            right: right,
            child: Container(
              height: 320,
              child: Image.asset(
                image,
              ),
            ),
          )
        ],
      ),
    );
  }
}
