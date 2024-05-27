import 'package:flutter/material.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 270,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.transfer),
                  SizedBox(height: ASizes.sm),
                  Text("Transfer",
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.fund),
                  SizedBox(height: ASizes.sm),
                  Text("Fund", style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(icon: AIcons.withdraw),
                  SizedBox(height: ASizes.sm),
                  Text("Withdraw",
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
            ]),
      ),
    );
  }
}
