import 'package:flutter/material.dart';

class Painter extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size){
    var h = size.height;
    var w = size.width;

    Paint paint = Paint()..color = Color(0xff241bcc)..
    strokeWidth = 1..style = PaintingStyle.fill;

    canvas.drawCircle(Offset(w * -0.21, h *0.35), 400, paint);
  }
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate){
    return false;
  }
}