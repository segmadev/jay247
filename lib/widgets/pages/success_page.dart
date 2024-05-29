import 'package:jay247/utills/consts/asset_paths.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/utills/popups/loaders.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessSCreen extends StatelessWidget {
  const SuccessSCreen(
      {super.key,
      required this.text,
      this.animation,
      this.showAction = true,
      this.actionText,
      this.onActionPressed,
      this.heading = AText.success});
  final String text;
  final String? animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final String heading;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: ASizes.lg),
            AAnimationLoaderWidget(
              text: text,
              animation: animation ?? AAssets.lottieVerified,
              heading: heading,
              showAction: showAction,
              actionText: actionText,
            ),
            // Text("Success"),
          ],
        ),
      ),
    );
  }
}
