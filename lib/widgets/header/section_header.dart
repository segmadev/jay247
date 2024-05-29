import 'package:get/get.dart';
import 'package:jay247/utills/consts/colors.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:flutter/material.dart';
import 'package:jay247/utills/helpers/helper_functions.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader(
      {super.key,
      required this.title,
      this.textButton,
      this.textAction,
      this.paragraph});
  final String title;
  final String? textButton;
  final void Function()? textAction;
  final String? paragraph;

  @override
  Widget build(BuildContext context) {
    final isDark = AHelperFunctions.isDarkMode(context);
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: ASizes.md,
          ),
          Row(
            mainAxisAlignment: textButton != null
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              Text(title, style: Theme.of(context).textTheme.headlineSmall),
              (textButton != null)
                  ? TextButton(
                      onPressed: textAction ?? () {},
                      child: Text(textButton!,
                          style: Theme.of(context)
                              .textTheme
                              .labelSmall
                              ?.copyWith(
                                  color: isDark
                                      ? AColor.dprimary
                                      : AColor.lprimary,
                                  fontWeight: FontWeight.bold)),
                    )
                  : Text(""),
            ],
          ),
          paragraph != null
              ? Column(
                  children: [
                    SizedBox(
                      height: ASizes.sm,
                    ),
                    Text(
                      paragraph ?? "",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                )
              : SizedBox(),
          SizedBox(
            height: ASizes.md,
          ),
        ],
      ),
    );
  }
}
