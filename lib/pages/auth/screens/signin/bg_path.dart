import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

//Copy this CustomPainter code to the Bottom of the File
class SignInBgPath extends CustomPainter {
  // final bgColor = AHelperFunctions.isDarkMode(Get.overlayContext!)
  //     ? AColor.dprimary
  //     : AColor.lprimary;
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(size.width * 0.9978395, 0);
    path_0.cubicTo(
        size.width * 0.9978395,
        0,
        size.width * 1.012791,
        size.height * 0.7200557,
        size.width * 0.9978395,
        size.height * 0.7200557);
    path_0.cubicTo(
        size.width * 0.9828860,
        size.height * 0.7200557,
        size.width * 0.4316233,
        size.height * 0.9528134,
        size.width * 0.3132744,
        size.height * 0.9896769);
    path_0.cubicTo(size.width * 0.1949265, size.height * 1.026543, 0,
        size.height * 0.9528134, 0, size.height * 0.9528134);
    path_0.lineTo(0, 0);
    path_0.close();

    Paint paint_0_fill = Paint()..style = PaintingStyle.fill;
    paint_0_fill.shader = ui.Gradient.linear(
        Offset(size.width * -32.55837, size.height * 1.079320),
        Offset(size.width * 1.364179, size.height * -7.686908),
        [AColor.dprimary.withOpacity(1), AColor.dprimary.withOpacity(0.8)],
        [0, 1]);
    canvas.drawPath(path_0, paint_0_fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
