import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jay247/pages/convert/screen/crypto_convert_screen.dart';
import 'package:jay247/pages/fund/screens/fund_account_screen.dart';
import 'package:jay247/pages/transfer/screens/transfer_screen.dart';
import 'package:jay247/pages/withdraw/screens/withdraw_screen.dart';
import 'package:jay247/utills/consts/icons.dart';
import 'package:jay247/utills/consts/size.dart';
import 'package:jay247/utills/consts/text.dart';
import 'package:jay247/widgets/icons/circle_icon.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 300,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(
                      icon: AIcons.fund,
                      onTap: () {
                        Get.to(const FundAccountScreen());
                      }),
                  const SizedBox(height: ASizes.sm),
                  const Text(AText.fund,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(
                    icon: AIcons.crypto,
                    onTap: () {
                      Get.to(const CyptoConvertSreen());
                    },
                  ),
                  const SizedBox(height: ASizes.sm),
                  const Text(AText.convert,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(
                    icon: AIcons.transfer,
                    onTap: () {
                      Get.to(const TransferScreen());
                    },
                  ),
                  const SizedBox(height: ASizes.sm),
                  const Text(AText.transfer,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ACircleIcon(
                    icon: AIcons.withdraw,
                    onTap: () {
                      Get.to(const WithdrwaScreen());
                    },
                  ),
                  const SizedBox(height: ASizes.sm),
                  const Text(AText.withdraw,
                      style: TextStyle(fontSize: ASizes.fontSizeSm)),
                ],
              ),
            ]),
      ),
    );
  }
}
