import 'dart:ui' as ui;
import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.5385202);
    path_0.cubicTo(
        size.width * 0.8222293,
        size.height * 0.5384439,
        size.width * 0.6083533,
        size.height * 0.7128202,
        size.width * 0.4843978,
        size.height * 0.8245820);
    path_0.cubicTo(
        size.width * 0.3631236,
        size.height * 0.9416353,
        size.width * 0.1818503,
        size.height * 1.001467,
        0,
        size.height * 0.9999746);
    path_0.lineTo(0, size.height * -1.444339e-16);
    path_0.lineTo(size.width * 0.006978054, size.height * -1.444339e-16);
    path_0.lineTo(size.width, size.height * -1.444339e-16);
    path_0.lineTo(size.width, size.height * 0.5385202);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -4.763133, size.height * -17.16511),
        Offset(size.width * -57.84726, size.height * 0.9490103),
        [Color(0xff7DB301).withOpacity(1), Color(0xffADF802).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//Copy this CustomPainter code to the Bottom of the File
class RPSCustomPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.5385186);
    path_0.cubicTo(
        size.width * 0.1777690,
        size.height * 0.5384399,
        size.width * 0.3916490,
        size.height * 0.7128216,
        size.width * 0.5156057,
        size.height * 0.8245732);
    path_0.cubicTo(
        size.width * 0.6368844,
        size.height * 0.9416293,
        size.width * 0.8181480,
        size.height * 1.001450,
        size.width,
        size.height * 0.9999663);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.9930228, 0);
    path_0.lineTo(size.width * 1.365263e-16, 0);
    path_0.lineTo(size.width * 1.365263e-16, size.height * 0.5385186);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -4.762763, size.height * -17.16508),
        Offset(size.width * -57.84727, size.height * 0.9490015),
        [Color(0xff7DB301).withOpacity(1), Color(0xffADF802).withOpacity(1)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
