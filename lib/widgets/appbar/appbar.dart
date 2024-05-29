import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/device/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class AAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AAppBar(
      {super.key,
      this.title,
      this.showBackArrow = true,
      this.leading,
      this.actions,
      this.leadingOnPressed,
      this.leadingWidth = 60,
      this.titleText,
      this.centerTitle = false});
  final Widget? title;
  final bool showBackArrow;
  final Widget? leading;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  final double leadingWidth;
  final String? titleText;
  final bool centerTitle;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return Container(
      color: AColor.appBarBg,
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 0, horizontal: ASizes.defaultSpace),
        child: AppBar(
            titleSpacing: ASizes.sm,
            // titleTextStyle: const TextStyle(color: AColor.appBarText),
            automaticallyImplyLeading: false,
            title: showBackArrow
                ? Text(
                    titleText ?? AText.back,
                    style: TextStyle(
                      color: isDark ? AColor.white : AColor.black,
                    ),
                  )
                : title,
            leadingWidth: showBackArrow ? 30 : leadingWidth,
            centerTitle: centerTitle,
            leading: showBackArrow
                ? TextButton(
                    style: TextButton.styleFrom(
                        iconColor: isDark ? AColor.white : AColor.black,
                        padding: EdgeInsets.zero,
                        alignment: Alignment.center),
                    onPressed: () => Get.back(),
                    child: const Icon(
                      AIcons.back,
                      size: ASizes.iconSm,
                    ),
                  )
                : leading,
            actions: actions),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(ADeviceUtils.getAppBarHeight());
}
