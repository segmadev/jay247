import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 300,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.fund),
                  SizedBox(height: ASizes.sm),
                  Text(AText.fund,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.crypto),
                  SizedBox(height: ASizes.sm),
                  Text(AText.convert,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.transfer),
                  SizedBox(height: ASizes.sm),
                  Text(AText.transfer,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.withdraw),
                  SizedBox(height: ASizes.sm),
                  Text(AText.widthdraw,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
            ]),
      ),
    );
  }
}
