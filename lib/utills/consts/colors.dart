import 'package:flutter/material.dart';

class AColor {
  // Color gradinetColor = Color.fromRGBO(58, 44, 252, 0.604);

// app bar bg
  static const appBarBg = Colors.transparent;
  static const appBarText = Colors.white;
// dbackground
  static const dbackground = Color(0xff161F01);
// lbackground
  static const lbackground = Color(0xFFF6FFE6);
  // scolor
  static const scolor = Color(0xff4318FF);
// dprimary
  static const dprimary = Color(0xff7DB301);
// lprimary
  static const lprimary = Color(0xFF80B700);
// success
  static const lightSuccess = Color(0xff7DB301);
  // Color(0xff86FF8B);
  static const darkSuccess = Color(0xffADF802);
// danger
  static const danger = Color(0xffFF1700);
// warning
  static const warning = Color.fromARGB(255, 190, 168, 0);
// white
  static const white = Color(0xffffffff);
// black
  static const black = Color(0xFF000000);
// transparent
  static const transparent = Color(0x00000000);
// gradientColor
// blue
  static const blue = Color(0xff4318FF);
// gray
  static const gray = Color(0xFF4F4F4F);

  // Color gradinetColor = Color.fromRGBO(58, 44, 252, 0.604);
  static LinearGradient gradinetColor = const LinearGradient(
    colors: [Color(0xffADF802), Color(0xffADF802), Color(0xFF5F8801)],
    stops: [0, 0.5, 1],
    begin: Alignment(0.1, 0.1),
    end: Alignment(-1.0, -0.2),
  );

  // dark color gradient
  static LinearGradient darkGradinetColor = const LinearGradient(
    colors: [Color(0xffADF802), Color(0xffADF802), Color(0xFF5F8801)],
    stops: [0, 0.5, 1],
    begin: Alignment(0.1, 0.1),
    end: Alignment(-1.0, -0.2),
  );
}
