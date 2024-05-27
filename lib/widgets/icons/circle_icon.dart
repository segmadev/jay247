import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class ACircleIcon extends StatelessWidget {
  const ACircleIcon(
      {super.key,
      this.size = 60,
      this.showShadow = true,
      this.shadowColor,
      this.backgoundColor,
      this.iconColor,
      required this.icon});
  final double size;
  final bool showShadow;
  final IconData icon;
  final Color? shadowColor;
  final Color? backgoundColor;
  final Color? iconColor;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
          boxShadow: showShadow
              ? [
                  BoxShadow(
                    color: shadowColor ?? AColor.dprimary.withOpacity(0.2),
                    offset: const Offset(0, 0),
                    blurRadius: 21,
                    spreadRadius: 4,
                  )
                ]
              : null,
          color: backgoundColor ??
              (isDark
                  ? AColor.black.withOpacity(0.9)
                  : AColor.white.withOpacity(0.9)),
          borderRadius: const BorderRadius.all(Radius.circular(100))),
      child: Icon(icon,
          color: iconColor ?? (!isDark ? AColor.lprimary : AColor.dprimary)),
    );
  }
}
