import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:flutter/material.dart';

class AAppBarTheme {
  AAppBarTheme._();
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AColor.white, size: ASizes.iconMd),
    actionsIconTheme: IconThemeData(color: AColor.white, size: ASizes.iconMd),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AColor.white),
  );
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: AColor.white, size: ASizes.iconSm),
    actionsIconTheme: IconThemeData(color: AColor.white, size: ASizes.iconSm),
    titleTextStyle: TextStyle(
        fontSize: 18.0, fontWeight: FontWeight.w600, color: AColor.white),
  );
}
