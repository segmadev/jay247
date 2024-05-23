import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    super.key,
    this.name = "submit",
    this.onPressed,
    this.color,
    this.child,
    this.width,
    this.height,
    this.isOutlined = false,
    this.isGradient = false,
  });
  final String name;
  final void Function()? onPressed;
  final Color? color;
  final Widget? child;
  final double? width;
  final double? height;
  final bool isOutlined;
  final bool isGradient;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return SizedBox(
        width: width ?? ASizes.buttonWidth,
        height: height ?? ASizes.buttonHeight,
        child: !isOutlined
            ? ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(0.0),
                    foregroundColor: color != null
                        ? color?.withOpacity(0.7)
                        : Theme.of(context).primaryColor.withOpacity(0.7),
                    backgroundColor:
                        color ?? (isDark ? AColor.dprimary : AColor.lprimary),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AHelperFunctions.isDarkMode(context)
                            ? AColor.black
                            : AColor.white)),
                onPressed: onPressed ?? () {},
                child: Ink(
                  decoration: isGradient
                      ? BoxDecoration(
                          gradient: AColor.gradinetColor,
                          borderRadius: BorderRadius.all(
                              Radius.circular(ASizes.buttonRoundedRadius)),
                        )
                      : null,
                  child: Center(
                    child: child != null
                        ? child
                        : Text(name,
                            style: TextStyle(
                                color: AHelperFunctions.isDarkMode(context)
                                    ? AColor.black
                                    : AColor.white)),
                  ),
                ),
              )
            : OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  // padding: EdgeInsets.all(25),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(ASizes.buttonRoundedRadius),
                  ),
                ),
                child: child != null
                    ? child
                    : Text(name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AHelperFunctions.isDarkMode(context)
                                ? AColor.dprimary
                                : AColor.lprimary)),
              ));
  }
}
