import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:flutter/material.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

/* -- Light & Dark Elevated Button Themes -- */
class AOutlinedButtonTheme {
  AOutlinedButtonTheme._(); //To avoid creating instances
  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      side: BorderSide(
          width: ASizes.buttonBorderWidth,
          color: AColor.lprimary), // Define the outline's weight and color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            ASizes.buttonRadius), // Your desired shape with round corners
      ),
      textStyle: const TextStyle(
          fontSize: ASizes.fontSizeMd,
          color: AColor.lprimary,
          fontWeight: FontWeight.w600),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: EdgeInsets.all(20),

      side: BorderSide(
          width: ASizes.buttonBorderWidth,
          color: AColor.dprimary), // Define the outline's weight and color
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
            ASizes.buttonRadius), // Your desired shape with round corners
      ),
      textStyle: const TextStyle(
          fontSize: ASizes.fontSizeMd,
          color: AColor.dprimary,
          fontWeight: FontWeight.w600),
    ),

    // style: ElevatedButton.styleFrom(
    //   elevation: 0,
    //   foregroundColor: AColor.black,
    //   backgroundColor: AColor.dprimary,
    //   // disabledForegroundColor: AColor.darkGrey,
    //   // disabledBackgroundColor: AColor.dprimary,
    //   // side: const BorderSide(color: AColor.dprimary),
    //   padding: const EdgeInsets.symmetric(vertical: ASizes.buttonHeight),
    //   textStyle: const TextStyle(
    //       fontSize: 16, color: AColor.white, fontWeight: FontWeight.w600),
    //   shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(ASizes.buttonRadius)),
    // ),
  );
}
