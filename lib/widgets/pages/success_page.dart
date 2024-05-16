import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/popups/loaders.dart';
import 'package:flutter/material.dart';

class SuccessSCreen extends StatelessWidget {
  const SuccessSCreen(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = true,
      this.actionText,
      this.onActionPressed,
      this.heading = "Weldone!"});
  final String text;
  final String animation;
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
              animation: animation,
              heading: heading,
              showAction: showAction,
            ),
            // Text("Success"),
          ],
        ),
      ),
    );
  }
}
