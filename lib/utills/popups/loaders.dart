import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/buttons/primary_button.dart';
import 'package:jay247/widgets/buttons/round_button.dart';
import 'package:jay247/widgets/navigation/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class AAnimationLoaderWidget extends StatelessWidget {
  const AAnimationLoaderWidget(
      {super.key,
      required this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed,
      this.heading});

  final String text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;
  final String? heading;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width * 0.8),
          heading != null
              ? Text(
                  heading!,
                  style: Theme.of(context).textTheme.headlineMedium,
                )
              : const Text(""),
          const SizedBox(
            height: ASizes.sm,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: ASizes.defaultSpace,
          ),
          showAction
              ? SizedBox(
                  width: 250,
                  child: RoundButton(
                    onPressed: onActionPressed ??
                        () {
                          Get.to(NavigationMenu());
                        },
                    name: actionText ?? AText.goDashboard,
                  ),
                )
              : SizedBox(),
        ],
      ),
    );
  }
}
