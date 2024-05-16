import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/theme/custom_theme/app_bar_theme.dart';
import 'package:jay247/utills/theme/custom_theme/elevated_button_theme.dart';
import 'package:jay247/utills/theme/custom_theme/text_field_theme.dart';
import 'package:jay247/utills/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class AAppTheme {
  AAppTheme._();
  // light theme settings
  static ThemeData lightTheme = ThemeData(
    fontFamily: 'Raleway',
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: AColor.lbackground,
    scaffoldBackgroundColor: AColor.lbackground,
    textTheme: ATextTheme.lightTextTheme,
    appBarTheme: AAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: AElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.lightInputDecorationTheme,
  );
  // dark theme settings
  static ThemeData darkTheme = ThemeData(
    fontFamily: 'raleway',
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AColor.dprimary,
    scaffoldBackgroundColor: AColor.dbackground,
    textTheme: ATextTheme.darkTextTheme,
    appBarTheme: AAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: AElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: ATextFormFieldTheme.blackInputDecorationTheme,
  );
}
